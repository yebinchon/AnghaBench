
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_pf {int vlan_promisc_simap; TYPE_1__* si; } ;
struct TYPE_2__ {int hw; } ;


 int BIT (int) ;
 int enetc_set_vlan_promisc (int *,int ) ;

__attribute__((used)) static void enetc_enable_si_vlan_promisc(struct enetc_pf *pf, int si_idx)
{
 pf->vlan_promisc_simap |= BIT(si_idx);
 enetc_set_vlan_promisc(&pf->si->hw, pf->vlan_promisc_simap);
}
