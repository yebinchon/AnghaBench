
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum vpss_wbl_sel { ____Placeholder_vpss_wbl_sel } vpss_wbl_sel ;


 int DM644X_SBL_PCR_VPSS ;
 int EINVAL ;
 int VPSS_PCR_AEW_WBL_0 ;
 int VPSS_PCR_CCDC_WBL_O ;
 int bl_regr (int ) ;
 int bl_regw (int,int ) ;

__attribute__((used)) static int dm644x_clear_wbl_overflow(enum vpss_wbl_sel wbl_sel)
{
 u32 mask = 1, val;

 if (wbl_sel < VPSS_PCR_AEW_WBL_0 ||
     wbl_sel > VPSS_PCR_CCDC_WBL_O)
  return -EINVAL;


 mask = ~(mask << wbl_sel);
 val = bl_regr(DM644X_SBL_PCR_VPSS) & mask;
 bl_regw(val, DM644X_SBL_PCR_VPSS);
 return 0;
}
