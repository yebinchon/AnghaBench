
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int curbssid; } ;


 int ETH_ALEN ;
 int MAX_PATTERN_MASK_SIZE ;
 int MAX_PATTERN_SIZE ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wow_apply_pattern (struct ath_hw*,int*,int*,int,int) ;
 int memcpy (int*,int ,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int ath9k_wow_add_disassoc_deauth_pattern(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 int pattern_count = 0;
 int ret, i, byte_cnt = 0;
 u8 dis_deauth_pattern[MAX_PATTERN_SIZE];
 u8 dis_deauth_mask[MAX_PATTERN_SIZE];

 memset(dis_deauth_pattern, 0, MAX_PATTERN_SIZE);
 memset(dis_deauth_mask, 0, MAX_PATTERN_SIZE);
 for (i = 0; i < MAX_PATTERN_MASK_SIZE; i++)
  dis_deauth_mask[i] = 0xff;


 dis_deauth_pattern[byte_cnt] = 0xa0;
 byte_cnt++;


 byte_cnt += 3;





 byte_cnt += 6;


 memcpy((dis_deauth_pattern + byte_cnt), common->curbssid, ETH_ALEN);

 byte_cnt += 6;


 memcpy((dis_deauth_pattern + byte_cnt), common->curbssid, ETH_ALEN);


 dis_deauth_mask[0] = 0xfe;
 dis_deauth_mask[1] = 0x03;
 dis_deauth_mask[2] = 0xc0;

 ret = ath9k_hw_wow_apply_pattern(ah, dis_deauth_pattern, dis_deauth_mask,
      pattern_count, byte_cnt);
 if (ret)
  goto exit;

 pattern_count++;




 dis_deauth_pattern[0] = 0xC0;

 ret = ath9k_hw_wow_apply_pattern(ah, dis_deauth_pattern, dis_deauth_mask,
      pattern_count, byte_cnt);
exit:
 return ret;
}
