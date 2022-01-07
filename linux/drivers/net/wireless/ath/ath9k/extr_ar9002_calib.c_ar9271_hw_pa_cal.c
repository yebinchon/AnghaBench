
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int prev_offset; int max_skipcount; int skipcount; } ;
struct ath_hw {TYPE_1__ pacal_info; } ;


 int AR9271_AN_RF2G3_CCOMP ;
 int AR9271_AN_RF2G6_OFFS ;
 int AR9285_AN_RF2G1 ;
 int AR9285_AN_RF2G1_ENPACAL ;
 int AR9285_AN_RF2G1_PDPADRV1 ;
 int AR9285_AN_RF2G1_PDPADRV2 ;
 int AR9285_AN_RF2G1_PDPAOUT ;
 int AR9285_AN_RF2G2 ;
 int AR9285_AN_RF2G2_OFFCAL ;
 int AR9285_AN_RF2G3 ;
 int AR9285_AN_RF2G6 ;
 int AR9285_AN_RF2G7 ;
 int AR9285_AN_RF2G7_PADRVGN2TAB0 ;
 int AR9285_AN_RF2G7_PWDDB ;
 int AR9285_AN_RF2G8 ;
 int AR9285_AN_RF2G8_PADRVGN2TAB0 ;
 int AR9285_AN_RF2G9 ;
 int AR9285_AN_RXTXBB1 ;
 int AR9285_AN_RXTXBB1_PDDACIF ;
 int AR9285_AN_RXTXBB1_PDRXTXBB1 ;
 int AR9285_AN_RXTXBB1_PDV2I ;
 int AR9285_AN_RXTXBB1_SPARE9 ;
 int AR9285_AN_TOP2 ;
 int AR9285_AN_TOP3 ;
 int AR9285_AN_TOP3_PWDDAC ;
 unsigned int ARRAY_SIZE (int**) ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int ENABLE_REG_RMW_BUFFER (struct ath_hw*) ;
 int MAX_PACAL_SKIPCOUNT ;
 int MS (int,int ) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int,int) ;
 int REG_READ (struct ath_hw*,int) ;
 int REG_READ_ARRAY (struct ath_hw*,int**,unsigned int) ;
 int REG_RMW_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int,int) ;
 int REG_WRITE (struct ath_hw*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9271_hw_pa_cal(struct ath_hw *ah, bool is_reset)
{
 u32 regVal;
 unsigned int i;
 u32 regList[][2] = {
  { AR9285_AN_TOP3, 0 },
  { AR9285_AN_RXTXBB1, 0 },
  { AR9285_AN_RF2G1, 0 },
  { AR9285_AN_RF2G2, 0 },
  { AR9285_AN_TOP2, 0 },
  { AR9285_AN_RF2G8, 0 },
  { AR9285_AN_RF2G7, 0 },
  { AR9285_AN_RF2G3, 0 },
 };

 REG_READ_ARRAY(ah, regList, ARRAY_SIZE(regList));

 ENABLE_REG_RMW_BUFFER(ah);

 REG_CLR_BIT(ah, AR9285_AN_RF2G6, 1 << 0);

 REG_SET_BIT(ah, 0x9808, 1 << 27);

 REG_SET_BIT(ah, AR9285_AN_TOP3, AR9285_AN_TOP3_PWDDAC);

 REG_SET_BIT(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDRXTXBB1);

 REG_SET_BIT(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDV2I);

 REG_SET_BIT(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDDACIF);

 REG_CLR_BIT(ah, AR9285_AN_RF2G2, AR9285_AN_RF2G2_OFFCAL);

 REG_CLR_BIT(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PWDDB);

 REG_CLR_BIT(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_ENPACAL);

 REG_CLR_BIT(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV1);

 REG_CLR_BIT(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV2);

 REG_CLR_BIT(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPAOUT);

 REG_RMW_FIELD(ah, AR9285_AN_RF2G8, AR9285_AN_RF2G8_PADRVGN2TAB0, 7);




 REG_RMW_FIELD(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PADRVGN2TAB0, 0);

 REG_RMW_FIELD(ah, AR9285_AN_RF2G3, AR9271_AN_RF2G3_CCOMP, 0xfff);
 REG_RMW_BUFFER_FLUSH(ah);





 REG_WRITE(ah, AR9285_AN_TOP2, 0xca0358a0);
 udelay(30);
 REG_RMW_FIELD(ah, AR9285_AN_RF2G6, AR9271_AN_RF2G6_OFFS, 0);


 for (i = 6; i > 0; i--) {
  regVal = REG_READ(ah, AR9285_AN_RF2G6);
  regVal |= (1 << (20 + i));
  REG_WRITE(ah, AR9285_AN_RF2G6, regVal);
  udelay(1);

  regVal &= (~(0x1 << (20 + i)));
  regVal |= (MS(REG_READ(ah, AR9285_AN_RF2G9),
         AR9285_AN_RXTXBB1_SPARE9)
       << (20 + i));
  REG_WRITE(ah, AR9285_AN_RF2G6, regVal);
 }

 regVal = (regVal >> 20) & 0x7f;


 if ((!is_reset) && (ah->pacal_info.prev_offset == regVal)) {
  if (ah->pacal_info.max_skipcount < MAX_PACAL_SKIPCOUNT)
   ah->pacal_info.max_skipcount =
    2 * ah->pacal_info.max_skipcount;
  ah->pacal_info.skipcount = ah->pacal_info.max_skipcount;
 } else {
  ah->pacal_info.max_skipcount = 1;
  ah->pacal_info.skipcount = 0;
  ah->pacal_info.prev_offset = regVal;
 }


 ENABLE_REG_RMW_BUFFER(ah);

 REG_SET_BIT(ah, AR9285_AN_RF2G6, 1 << 0);

 REG_CLR_BIT(ah, 0x9808, 1 << 27);
 REG_RMW_BUFFER_FLUSH(ah);

 ENABLE_REGWRITE_BUFFER(ah);
 for (i = 0; i < ARRAY_SIZE(regList); i++)
  REG_WRITE(ah, regList[i][0], regList[i][1]);

 REGWRITE_BUFFER_FLUSH(ah);
}
