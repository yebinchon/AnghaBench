
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_data_hdr {int dummy; } ;
struct net_device {int needs_free_netdev; int hw_features; int needed_headroom; int watchdog_timeo; int * netdev_ops; } ;
struct ath6kl_llc_snap_hdr {int dummy; } ;
struct ath6kl {int fw_capabilities; } ;


 int ATH6KL_FW_CAPABILITY_NO_IP_CHECKSUM ;
 scalar_t__ ATH6KL_HTC_ALIGN_BYTES ;
 int ATH6KL_TX_TIMEOUT ;
 int ETH_HLEN ;
 scalar_t__ HTC_HDR_LENGTH ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 scalar_t__ WMI_MAX_TX_META_SZ ;
 int ath6kl_netdev_ops ;
 struct ath6kl* ath6kl_priv (struct net_device*) ;
 scalar_t__ roundup (scalar_t__,int) ;
 int test_bit (int ,int ) ;

void init_netdev(struct net_device *dev)
{
 struct ath6kl *ar = ath6kl_priv(dev);

 dev->netdev_ops = &ath6kl_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->watchdog_timeo = ATH6KL_TX_TIMEOUT;

 dev->needed_headroom = ETH_HLEN;
 dev->needed_headroom += roundup(sizeof(struct ath6kl_llc_snap_hdr) +
     sizeof(struct wmi_data_hdr) +
     HTC_HDR_LENGTH +
     WMI_MAX_TX_META_SZ +
     ATH6KL_HTC_ALIGN_BYTES, 4);

 if (!test_bit(ATH6KL_FW_CAPABILITY_NO_IP_CHECKSUM,
        ar->fw_capabilities))
  dev->hw_features |= NETIF_F_IP_CSUM | NETIF_F_RXCSUM;

 return;
}
