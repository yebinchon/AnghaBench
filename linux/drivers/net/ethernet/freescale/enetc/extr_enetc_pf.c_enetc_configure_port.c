
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct enetc_pf {int vlan_promisc_simap; TYPE_1__* si; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_4__ {struct enetc_hw hw; } ;


 int ENETC_PMR ;
 int ENETC_PMR_EN ;
 int ENETC_PSIPMR ;
 int ENETC_RSSHASH_KEY_SIZE ;
 int ENETC_VLAN_PROMISC_MAP_ALL ;
 int enetc_configure_port_mac (struct enetc_hw*) ;
 int enetc_configure_port_pmac (struct enetc_hw*) ;
 int enetc_port_assign_rfs_entries (TYPE_1__*) ;
 int enetc_port_setup_primary_mac_address (TYPE_1__*) ;
 int enetc_port_si_configure (TYPE_1__*) ;
 int enetc_port_wr (struct enetc_hw*,int ,int ) ;
 int enetc_set_rss_key (struct enetc_hw*,int *) ;
 int enetc_set_vlan_promisc (struct enetc_hw*,int ) ;
 int get_random_bytes (int *,int) ;

__attribute__((used)) static void enetc_configure_port(struct enetc_pf *pf)
{
 u8 hash_key[ENETC_RSSHASH_KEY_SIZE];
 struct enetc_hw *hw = &pf->si->hw;

 enetc_configure_port_pmac(hw);

 enetc_configure_port_mac(hw);

 enetc_port_si_configure(pf->si);


 get_random_bytes(hash_key, ENETC_RSSHASH_KEY_SIZE);
 enetc_set_rss_key(hw, hash_key);


 enetc_port_assign_rfs_entries(pf->si);


 enetc_port_setup_primary_mac_address(pf->si);


 pf->vlan_promisc_simap = ENETC_VLAN_PROMISC_MAP_ALL;
 enetc_set_vlan_promisc(hw, pf->vlan_promisc_simap);

 enetc_port_wr(hw, ENETC_PSIPMR, 0);


 enetc_port_wr(hw, ENETC_PMR, ENETC_PMR_EN);
}
