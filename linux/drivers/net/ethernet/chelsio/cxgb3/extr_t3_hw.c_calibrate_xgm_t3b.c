
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_XGM_RGMII_IMP ;
 int F_CALRESET ;
 int F_CALUPDATE ;
 int F_XGM_IMPSETUPDATE ;
 int V_RGMIIIMPPD (int) ;
 int V_RGMIIIMPPU (int) ;
 int t3_set_reg_field (struct adapter*,int ,int,int) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int uses_xaui (struct adapter*) ;

__attribute__((used)) static void calibrate_xgm_t3b(struct adapter *adapter)
{
 if (!uses_xaui(adapter)) {
  t3_write_reg(adapter, A_XGM_RGMII_IMP, F_CALRESET |
        F_CALUPDATE | V_RGMIIIMPPD(2) | V_RGMIIIMPPU(3));
  t3_set_reg_field(adapter, A_XGM_RGMII_IMP, F_CALRESET, 0);
  t3_set_reg_field(adapter, A_XGM_RGMII_IMP, 0,
     F_XGM_IMPSETUPDATE);
  t3_set_reg_field(adapter, A_XGM_RGMII_IMP, F_XGM_IMPSETUPDATE,
     0);
  t3_set_reg_field(adapter, A_XGM_RGMII_IMP, F_CALUPDATE, 0);
  t3_set_reg_field(adapter, A_XGM_RGMII_IMP, 0, F_CALUPDATE);
 }
}
