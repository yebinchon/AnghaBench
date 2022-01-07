
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_hw {int dummy; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_hw hw; } ;
struct enetc_pf {int total_vfs; } ;
struct TYPE_2__ {int dev; } ;


 int MAX_ADDR_LEN ;
 int dev_info (int *,char*,int,unsigned char*) ;
 int enetc_pf_get_primary_mac_addr (struct enetc_hw*,int,unsigned char*) ;
 int enetc_pf_set_primary_mac_addr (struct enetc_hw*,int,unsigned char*) ;
 struct enetc_pf* enetc_si_priv (struct enetc_si*) ;
 int eth_random_addr (unsigned char*) ;
 int is_zero_ether_addr (unsigned char*) ;

__attribute__((used)) static void enetc_port_setup_primary_mac_address(struct enetc_si *si)
{
 unsigned char mac_addr[MAX_ADDR_LEN];
 struct enetc_pf *pf = enetc_si_priv(si);
 struct enetc_hw *hw = &si->hw;
 int i;


 for (i = 0; i < pf->total_vfs + 1; i++) {
  enetc_pf_get_primary_mac_addr(hw, i, mac_addr);
  if (!is_zero_ether_addr(mac_addr))
   continue;
  eth_random_addr(mac_addr);
  dev_info(&si->pdev->dev, "no MAC address specified for SI%d, using %pM\n",
    i, mac_addr);
  enetc_pf_set_primary_mac_addr(hw, i, mac_addr);
 }
}
