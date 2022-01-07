
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_pf {int vlan_promisc_simap; } ;


 int BIT (int) ;

__attribute__((used)) static bool enetc_si_vlan_promisc_is_on(struct enetc_pf *pf, int si_idx)
{
 return pf->vlan_promisc_simap & BIT(si_idx);
}
