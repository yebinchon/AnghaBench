
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int ENET_VLAN_TBL (unsigned long) ;
 int ENET_VLAN_TBL_SHIFT (int) ;
 int ENET_VLAN_TBL_VLANRDCTBLN ;
 int ENET_VLAN_TBL_VPR ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;
 int vlan_entry_set_parity (int) ;

__attribute__((used)) static void vlan_tbl_write(struct niu *np, unsigned long index,
      int port, int vpr, int rdc_table)
{
 u64 reg_val = nr64(ENET_VLAN_TBL(index));

 reg_val &= ~((ENET_VLAN_TBL_VPR |
        ENET_VLAN_TBL_VLANRDCTBLN) <<
       ENET_VLAN_TBL_SHIFT(port));
 if (vpr)
  reg_val |= (ENET_VLAN_TBL_VPR <<
       ENET_VLAN_TBL_SHIFT(port));
 reg_val |= (rdc_table << ENET_VLAN_TBL_SHIFT(port));

 reg_val = vlan_entry_set_parity(reg_val);

 nw64(ENET_VLAN_TBL(index), reg_val);
}
