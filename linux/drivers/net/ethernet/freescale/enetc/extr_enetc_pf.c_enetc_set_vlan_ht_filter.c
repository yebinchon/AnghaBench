
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_hw {int dummy; } ;


 int ENETC_PSIVHFR0 (int) ;
 int ENETC_PSIVHFR1 (int) ;
 int enetc_port_wr (struct enetc_hw*,int ,int ) ;

__attribute__((used)) static void enetc_set_vlan_ht_filter(struct enetc_hw *hw, int si_idx,
         u32 *hash)
{
 enetc_port_wr(hw, ENETC_PSIVHFR0(si_idx), *hash);
 enetc_port_wr(hw, ENETC_PSIVHFR1(si_idx), *(hash + 1));
}
