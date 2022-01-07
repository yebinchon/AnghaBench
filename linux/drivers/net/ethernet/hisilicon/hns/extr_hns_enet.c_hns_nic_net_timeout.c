
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; } ;
struct hns_nic_priv {int dummy; } ;


 int HNS_NIC_TX_TIMEOUT ;
 int HNS_TX_TIMEO_LIMIT ;
 int hns_tx_timeout_reset (struct hns_nic_priv*) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hns_nic_net_timeout(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);

 if (ndev->watchdog_timeo < HNS_TX_TIMEO_LIMIT) {
  ndev->watchdog_timeo *= 2;
  netdev_info(ndev, "watchdog_timo changed to %d.\n",
       ndev->watchdog_timeo);
 } else {
  ndev->watchdog_timeo = HNS_NIC_TX_TIMEOUT;
  hns_tx_timeout_reset(priv);
 }
}
