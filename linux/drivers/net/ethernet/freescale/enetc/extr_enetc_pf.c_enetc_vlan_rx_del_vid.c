
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct enetc_pf {int active_vlans; } ;
struct enetc_ndev_priv {int si; } ;
typedef int __be16 ;


 int __clear_bit (int ,int ) ;
 int enetc_enable_si_vlan_promisc (struct enetc_pf*,int ) ;
 struct enetc_pf* enetc_si_priv (int ) ;
 int enetc_sync_vlan_ht_filter (struct enetc_pf*,int) ;
 int enetc_vlan_filter_is_on (struct enetc_pf*) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_vlan_rx_del_vid(struct net_device *ndev, __be16 prot, u16 vid)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_pf *pf = enetc_si_priv(priv->si);

 __clear_bit(vid, pf->active_vlans);
 enetc_sync_vlan_ht_filter(pf, 1);

 if (!enetc_vlan_filter_is_on(pf))
  enetc_enable_si_vlan_promisc(pf, 0);

 return 0;
}
