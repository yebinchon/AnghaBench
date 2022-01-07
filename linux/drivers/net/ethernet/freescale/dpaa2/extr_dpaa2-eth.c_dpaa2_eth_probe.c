
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int name; } ;
struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct dpaa2_eth_priv {int do_link_poll; int mc_io; int * percpu_stats; int * percpu_extras; int poll_thread; int iommu_domain; struct net_device* net_dev; } ;


 int DPAA2_ETH_MAX_NETDEV_QUEUES ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ;
 scalar_t__ IS_ERR (int ) ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int add_ch_napi (struct dpaa2_eth_priv*) ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 void* alloc_percpu (int ) ;
 int alloc_rings (struct dpaa2_eth_priv*) ;
 int bind_dpni (struct dpaa2_eth_priv*) ;
 int del_ch_napi (struct dpaa2_eth_priv*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_set_drvdata (struct device*,struct net_device*) ;
 int dpaa2_dbg_add (struct dpaa2_eth_priv*) ;
 int free_dpbp (struct dpaa2_eth_priv*) ;
 int free_dpio (struct dpaa2_eth_priv*) ;
 int free_dpni (struct dpaa2_eth_priv*) ;
 int free_netdev (struct net_device*) ;
 int free_percpu (int *) ;
 int free_rings (struct dpaa2_eth_priv*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;
 int fsl_mc_portal_allocate (struct fsl_mc_device*,int ,int *) ;
 int fsl_mc_portal_free (int ) ;
 int iommu_get_domain_for_dev (struct device*) ;
 int kthread_run (int ,struct dpaa2_eth_priv*,char*,int ) ;
 int kthread_stop (int ) ;
 int netdev_init (struct net_device*) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int poll_link_state ;
 int register_netdev (struct net_device*) ;
 int set_rx_csum (struct dpaa2_eth_priv*,int) ;
 int set_tx_csum (struct dpaa2_eth_priv*,int) ;
 int setup_dpbp (struct dpaa2_eth_priv*) ;
 int setup_dpio (struct dpaa2_eth_priv*) ;
 int setup_dpni (struct fsl_mc_device*) ;
 int setup_fqs (struct dpaa2_eth_priv*) ;
 int setup_irqs (struct fsl_mc_device*) ;

__attribute__((used)) static int dpaa2_eth_probe(struct fsl_mc_device *dpni_dev)
{
 struct device *dev;
 struct net_device *net_dev = ((void*)0);
 struct dpaa2_eth_priv *priv = ((void*)0);
 int err = 0;

 dev = &dpni_dev->dev;


 net_dev = alloc_etherdev_mq(sizeof(*priv), DPAA2_ETH_MAX_NETDEV_QUEUES);
 if (!net_dev) {
  dev_err(dev, "alloc_etherdev_mq() failed\n");
  return -ENOMEM;
 }

 SET_NETDEV_DEV(net_dev, dev);
 dev_set_drvdata(dev, net_dev);

 priv = netdev_priv(net_dev);
 priv->net_dev = net_dev;

 priv->iommu_domain = iommu_get_domain_for_dev(dev);


 err = fsl_mc_portal_allocate(dpni_dev, FSL_MC_IO_ATOMIC_CONTEXT_PORTAL,
         &priv->mc_io);
 if (err) {
  if (err == -ENXIO)
   err = -EPROBE_DEFER;
  else
   dev_err(dev, "MC portal allocation failed\n");
  goto err_portal_alloc;
 }


 err = setup_dpni(dpni_dev);
 if (err)
  goto err_dpni_setup;

 err = setup_dpio(priv);
 if (err)
  goto err_dpio_setup;

 setup_fqs(priv);

 err = setup_dpbp(priv);
 if (err)
  goto err_dpbp_setup;

 err = bind_dpni(priv);
 if (err)
  goto err_bind;


 add_ch_napi(priv);


 priv->percpu_stats = alloc_percpu(*priv->percpu_stats);
 if (!priv->percpu_stats) {
  dev_err(dev, "alloc_percpu(percpu_stats) failed\n");
  err = -ENOMEM;
  goto err_alloc_percpu_stats;
 }
 priv->percpu_extras = alloc_percpu(*priv->percpu_extras);
 if (!priv->percpu_extras) {
  dev_err(dev, "alloc_percpu(percpu_extras) failed\n");
  err = -ENOMEM;
  goto err_alloc_percpu_extras;
 }

 err = netdev_init(net_dev);
 if (err)
  goto err_netdev_init;


 err = set_rx_csum(priv, !!(net_dev->features & NETIF_F_RXCSUM));
 if (err)
  goto err_csum;

 err = set_tx_csum(priv, !!(net_dev->features &
       (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM)));
 if (err)
  goto err_csum;

 err = alloc_rings(priv);
 if (err)
  goto err_alloc_rings;

 err = setup_irqs(dpni_dev);
 if (err) {
  netdev_warn(net_dev, "Failed to set link interrupt, fall back to polling\n");
  priv->poll_thread = kthread_run(poll_link_state, priv,
      "%s_poll_link", net_dev->name);
  if (IS_ERR(priv->poll_thread)) {
   dev_err(dev, "Error starting polling thread\n");
   goto err_poll_thread;
  }
  priv->do_link_poll = 1;
 }

 err = register_netdev(net_dev);
 if (err < 0) {
  dev_err(dev, "register_netdev() failed\n");
  goto err_netdev_reg;
 }





 dev_info(dev, "Probed interface %s\n", net_dev->name);
 return 0;

err_netdev_reg:
 if (priv->do_link_poll)
  kthread_stop(priv->poll_thread);
 else
  fsl_mc_free_irqs(dpni_dev);
err_poll_thread:
 free_rings(priv);
err_alloc_rings:
err_csum:
err_netdev_init:
 free_percpu(priv->percpu_extras);
err_alloc_percpu_extras:
 free_percpu(priv->percpu_stats);
err_alloc_percpu_stats:
 del_ch_napi(priv);
err_bind:
 free_dpbp(priv);
err_dpbp_setup:
 free_dpio(priv);
err_dpio_setup:
 free_dpni(priv);
err_dpni_setup:
 fsl_mc_portal_free(priv->mc_io);
err_portal_alloc:
 dev_set_drvdata(dev, ((void*)0));
 free_netdev(net_dev);

 return err;
}
