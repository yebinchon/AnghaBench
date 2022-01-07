
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct aq_nic_s {int aq_hw; TYPE_3__* aq_hw_ops; TYPE_2__* ndev; } ;
struct aq_nic_cfg_s {int features; int is_lro; int is_vlan_rx_strip; int is_vlan_tx_insert; TYPE_1__* aq_hw_caps; } ;
typedef int netdev_features_t ;
struct TYPE_6__ {int (* hw_set_offload ) (int ,struct aq_nic_cfg_s*) ;} ;
struct TYPE_5__ {int features; } ;
struct TYPE_4__ {int hw_features; } ;


 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_LRO ;
 int NETIF_F_NTUPLE ;
 int NETIF_F_RXCSUM ;
 int aq_clear_rxnfc_all_rules (struct aq_nic_s*) ;
 int aq_filters_vlan_offload_off (struct aq_nic_s*) ;
 int aq_ndev_close (struct net_device*) ;
 int aq_ndev_open (struct net_device*) ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (int ,struct aq_nic_cfg_s*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aq_ndev_set_features(struct net_device *ndev,
    netdev_features_t features)
{
 bool is_vlan_rx_strip = !!(features & NETIF_F_HW_VLAN_CTAG_RX);
 bool is_vlan_tx_insert = !!(features & NETIF_F_HW_VLAN_CTAG_TX);
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 bool need_ndev_restart = 0;
 struct aq_nic_cfg_s *aq_cfg;
 bool is_lro = 0;
 int err = 0;

 aq_cfg = aq_nic_get_cfg(aq_nic);

 if (!(features & NETIF_F_NTUPLE)) {
  if (aq_nic->ndev->features & NETIF_F_NTUPLE) {
   err = aq_clear_rxnfc_all_rules(aq_nic);
   if (unlikely(err))
    goto err_exit;
  }
 }
 if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER)) {
  if (aq_nic->ndev->features & NETIF_F_HW_VLAN_CTAG_FILTER) {
   err = aq_filters_vlan_offload_off(aq_nic);
   if (unlikely(err))
    goto err_exit;
  }
 }

 aq_cfg->features = features;

 if (aq_cfg->aq_hw_caps->hw_features & NETIF_F_LRO) {
  is_lro = features & NETIF_F_LRO;

  if (aq_cfg->is_lro != is_lro) {
   aq_cfg->is_lro = is_lro;
   need_ndev_restart = 1;
  }
 }

 if ((aq_nic->ndev->features ^ features) & NETIF_F_RXCSUM) {
  err = aq_nic->aq_hw_ops->hw_set_offload(aq_nic->aq_hw,
       aq_cfg);

  if (unlikely(err))
   goto err_exit;
 }

 if (aq_cfg->is_vlan_rx_strip != is_vlan_rx_strip) {
  aq_cfg->is_vlan_rx_strip = is_vlan_rx_strip;
  need_ndev_restart = 1;
 }
 if (aq_cfg->is_vlan_tx_insert != is_vlan_tx_insert) {
  aq_cfg->is_vlan_tx_insert = is_vlan_tx_insert;
  need_ndev_restart = 1;
 }

 if (need_ndev_restart && netif_running(ndev)) {
  aq_ndev_close(ndev);
  aq_ndev_open(ndev);
 }

err_exit:
 return err;
}
