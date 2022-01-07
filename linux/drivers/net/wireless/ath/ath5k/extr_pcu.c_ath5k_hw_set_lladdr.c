
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_common {int macaddr; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_STA_ID0 ;
 int AR5K_STA_ID1 ;
 int ETH_ALEN ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int get_unaligned_le16 (int const*) ;
 int get_unaligned_le32 (int const*) ;
 int memcpy (int ,int const*,int ) ;

int
ath5k_hw_set_lladdr(struct ath5k_hw *ah, const u8 *mac)
{
 struct ath_common *common = ath5k_hw_common(ah);
 u32 low_id, high_id;
 u32 pcu_reg;


 memcpy(common->macaddr, mac, ETH_ALEN);

 pcu_reg = ath5k_hw_reg_read(ah, AR5K_STA_ID1) & 0xffff0000;

 low_id = get_unaligned_le32(mac);
 high_id = get_unaligned_le16(mac + 4);

 ath5k_hw_reg_write(ah, low_id, AR5K_STA_ID0);
 ath5k_hw_reg_write(ah, pcu_reg | high_id, AR5K_STA_ID1);

 return 0;
}
