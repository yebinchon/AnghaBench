
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct enetc_hw {int dummy; } ;


 int ENETC_PSIVLANR (int) ;
 int ENETC_PSIVLAN_EN ;
 int ENETC_PSIVLAN_SET_QOS (int ) ;
 int enetc_port_wr (struct enetc_hw*,int ,int) ;

__attribute__((used)) static void enetc_set_isol_vlan(struct enetc_hw *hw, int si, u16 vlan, u8 qos)
{
 u32 val = 0;

 if (vlan)
  val = ENETC_PSIVLAN_EN | ENETC_PSIVLAN_SET_QOS(qos) | vlan;

 enetc_port_wr(hw, ENETC_PSIVLANR(si), val);
}
