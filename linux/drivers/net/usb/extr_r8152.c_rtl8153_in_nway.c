
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct r8152 {int dummy; } ;


 scalar_t__ ABD_STATE ;
 int OCP_PHY_STATE ;
 scalar_t__ TXDIS_STATE ;
 int ocp_reg_read (struct r8152*,int ) ;

__attribute__((used)) static bool rtl8153_in_nway(struct r8152 *tp)
{
 u16 phy_state = ocp_reg_read(tp, OCP_PHY_STATE) & 0xff;

 if (phy_state == TXDIS_STATE || phy_state == ABD_STATE)
  return 0;
 else
  return 1;
}
