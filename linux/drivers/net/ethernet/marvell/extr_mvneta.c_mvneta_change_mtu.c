
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct mvneta_port {int pkt_size; scalar_t__ bm_priv; } ;


 int ALIGN (int ,int) ;
 int IS_ALIGNED (int ,int) ;
 int MVNETA_RX_PKT_SIZE (int) ;
 int mvneta_bm_update_mtu (struct mvneta_port*,int) ;
 int mvneta_cleanup_rxqs (struct mvneta_port*) ;
 int mvneta_cleanup_txqs (struct mvneta_port*) ;
 int mvneta_percpu_disable ;
 int mvneta_percpu_enable ;
 int mvneta_setup_rxqs (struct mvneta_port*) ;
 int mvneta_setup_txqs (struct mvneta_port*) ;
 int mvneta_start_dev (struct mvneta_port*) ;
 int mvneta_stop_dev (struct mvneta_port*) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,int,int) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int on_each_cpu (int ,struct mvneta_port*,int) ;

__attribute__((used)) static int mvneta_change_mtu(struct net_device *dev, int mtu)
{
 struct mvneta_port *pp = netdev_priv(dev);
 int ret;

 if (!IS_ALIGNED(MVNETA_RX_PKT_SIZE(mtu), 8)) {
  netdev_info(dev, "Illegal MTU value %d, rounding to %d\n",
       mtu, ALIGN(MVNETA_RX_PKT_SIZE(mtu), 8));
  mtu = ALIGN(MVNETA_RX_PKT_SIZE(mtu), 8);
 }

 dev->mtu = mtu;

 if (!netif_running(dev)) {
  if (pp->bm_priv)
   mvneta_bm_update_mtu(pp, mtu);

  netdev_update_features(dev);
  return 0;
 }




 mvneta_stop_dev(pp);
 on_each_cpu(mvneta_percpu_disable, pp, 1);

 mvneta_cleanup_txqs(pp);
 mvneta_cleanup_rxqs(pp);

 if (pp->bm_priv)
  mvneta_bm_update_mtu(pp, mtu);

 pp->pkt_size = MVNETA_RX_PKT_SIZE(dev->mtu);

 ret = mvneta_setup_rxqs(pp);
 if (ret) {
  netdev_err(dev, "unable to setup rxqs after MTU change\n");
  return ret;
 }

 ret = mvneta_setup_txqs(pp);
 if (ret) {
  netdev_err(dev, "unable to setup txqs after MTU change\n");
  return ret;
 }

 on_each_cpu(mvneta_percpu_enable, pp, 1);
 mvneta_start_dev(pp);

 netdev_update_features(dev);

 return 0;
}
