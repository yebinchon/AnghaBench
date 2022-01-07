
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct enetc_pf {int vlan_ht_filter; int active_vlans; } ;
struct enetc_ndev_priv {int si; } ;
typedef int __be16 ;


 int __set_bit (int ,int ) ;
 int __test_and_set_bit (int,int ) ;
 int enetc_disable_si_vlan_promisc (struct enetc_pf*,int ) ;
 struct enetc_pf* enetc_si_priv (int ) ;
 scalar_t__ enetc_si_vlan_promisc_is_on (struct enetc_pf*,int ) ;
 int enetc_sync_vlan_ht_filter (struct enetc_pf*,int) ;
 int enetc_vid_hash_idx (int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_vlan_rx_add_vid(struct net_device *ndev, __be16 prot, u16 vid)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_pf *pf = enetc_si_priv(priv->si);
 int idx;

 if (enetc_si_vlan_promisc_is_on(pf, 0))
  enetc_disable_si_vlan_promisc(pf, 0);

 __set_bit(vid, pf->active_vlans);

 idx = enetc_vid_hash_idx(vid);
 if (!__test_and_set_bit(idx, pf->vlan_ht_filter))
  enetc_sync_vlan_ht_filter(pf, 0);

 return 0;
}
