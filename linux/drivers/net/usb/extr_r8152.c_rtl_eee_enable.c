
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int version; int eee_adv; } ;


 int MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int OCP_EEE_ADV ;
 int ocp_reg_write (struct r8152*,int ,int ) ;
 int r8152_eee_en (struct r8152*,int) ;
 int r8152_mmd_write (struct r8152*,int ,int ,int ) ;
 int r8153_eee_en (struct r8152*,int) ;

__attribute__((used)) static void rtl_eee_enable(struct r8152 *tp, bool enable)
{
 switch (tp->version) {
 case 136:
 case 135:
 case 130:
  if (enable) {
   r8152_eee_en(tp, 1);
   r8152_mmd_write(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV,
     tp->eee_adv);
  } else {
   r8152_eee_en(tp, 0);
   r8152_mmd_write(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV, 0);
  }
  break;
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  if (enable) {
   r8153_eee_en(tp, 1);
   ocp_reg_write(tp, OCP_EEE_ADV, tp->eee_adv);
  } else {
   r8153_eee_en(tp, 0);
   ocp_reg_write(tp, OCP_EEE_ADV, 0);
  }
  break;
 default:
  break;
 }
}
