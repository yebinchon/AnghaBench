
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; } ;
struct TYPE_3__ {int default_vlan; int dual_emac; } ;
struct cpsw_priv {int tx_irq_disabled; int rx_irq_disabled; scalar_t__ coal_intvl; struct net_device* ndev; int dev; int dma; int usage_count; int cpts; int * irqs_table; int napi_tx; int napi_rx; TYPE_2__* regs; TYPE_1__ data; int ale; int version; int rx_ch_num; int tx_ch_num; struct cpsw_priv* cpsw; } ;
struct cpsw_common {int tx_irq_disabled; int rx_irq_disabled; scalar_t__ coal_intvl; struct net_device* ndev; int dev; int dma; int usage_count; int cpts; int * irqs_table; int napi_tx; int napi_rx; TYPE_2__* regs; TYPE_1__ data; int ale; int version; int rx_ch_num; int tx_ch_num; struct cpsw_common* cpsw; } ;
struct TYPE_4__ {int flow_control; int stat_port_en; int ptype; } ;


 int ALE_ALL_PORTS ;
 int CPSW_MAJOR_VERSION (int ) ;
 int CPSW_MINOR_VERSION (int ) ;
 int CPSW_RTL_VERSION (int ) ;
 int cpdma_ctlr_start (int ) ;
 int cpdma_ctlr_stop (int ) ;
 int cpsw_add_default_vlan (struct cpsw_priv*) ;
 int cpsw_ale_add_vlan (int ,int ,int ,int ,int ,int ) ;
 int cpsw_create_xdp_rxqs (struct cpsw_priv*) ;
 int cpsw_destroy_xdp_rxqs (struct cpsw_priv*) ;
 int cpsw_fill_rx_channels (struct cpsw_priv*) ;
 int cpsw_init_host_port (struct cpsw_priv*) ;
 int cpsw_intr_enable (struct cpsw_priv*) ;
 int cpsw_restore (struct cpsw_priv*) ;
 int cpsw_set_coalesce (struct net_device*,struct ethtool_coalesce*) ;
 int cpsw_slave_open ;
 int cpsw_slave_stop ;
 scalar_t__ cpts_register (int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ,int ) ;
 int enable_irq (int ) ;
 int for_each_slave (struct cpsw_priv*,int ,struct cpsw_priv*) ;
 int napi_enable (int *) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_put_sync (int ) ;
 int writel (int,int *) ;
 int writel_relaxed (int,int *) ;

__attribute__((used)) static int cpsw_ndo_open(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;
 int ret;
 u32 reg;

 ret = pm_runtime_get_sync(cpsw->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(cpsw->dev);
  return ret;
 }

 netif_carrier_off(ndev);


 ret = netif_set_real_num_tx_queues(ndev, cpsw->tx_ch_num);
 if (ret) {
  dev_err(priv->dev, "cannot set real number of tx queues\n");
  goto err_cleanup;
 }

 ret = netif_set_real_num_rx_queues(ndev, cpsw->rx_ch_num);
 if (ret) {
  dev_err(priv->dev, "cannot set real number of rx queues\n");
  goto err_cleanup;
 }

 reg = cpsw->version;

 dev_info(priv->dev, "initializing cpsw version %d.%d (%d)\n",
   CPSW_MAJOR_VERSION(reg), CPSW_MINOR_VERSION(reg),
   CPSW_RTL_VERSION(reg));


 if (!cpsw->usage_count)
  cpsw_init_host_port(priv);
 for_each_slave(priv, cpsw_slave_open, priv);


 if (!cpsw->data.dual_emac)
  cpsw_add_default_vlan(priv);
 else
  cpsw_ale_add_vlan(cpsw->ale, cpsw->data.default_vlan,
      ALE_ALL_PORTS, ALE_ALL_PORTS, 0, 0);


 if (!cpsw->usage_count) {

  writel_relaxed(0, &cpsw->regs->ptype);


  writel_relaxed(0x7, &cpsw->regs->stat_port_en);


  writel(0x7, &cpsw->regs->flow_control);

  napi_enable(&cpsw->napi_rx);
  napi_enable(&cpsw->napi_tx);

  if (cpsw->tx_irq_disabled) {
   cpsw->tx_irq_disabled = 0;
   enable_irq(cpsw->irqs_table[1]);
  }

  if (cpsw->rx_irq_disabled) {
   cpsw->rx_irq_disabled = 0;
   enable_irq(cpsw->irqs_table[0]);
  }




  ret = cpsw_create_xdp_rxqs(cpsw);
  if (ret < 0)
   goto err_cleanup;

  ret = cpsw_fill_rx_channels(priv);
  if (ret < 0)
   goto err_cleanup;

  if (cpts_register(cpsw->cpts))
   dev_err(priv->dev, "error registering cpts device\n");

 }

 cpsw_restore(priv);


 if (cpsw->coal_intvl != 0) {
  struct ethtool_coalesce coal;

  coal.rx_coalesce_usecs = cpsw->coal_intvl;
  cpsw_set_coalesce(ndev, &coal);
 }

 cpdma_ctlr_start(cpsw->dma);
 cpsw_intr_enable(cpsw);
 cpsw->usage_count++;

 return 0;

err_cleanup:
 if (!cpsw->usage_count) {
  cpdma_ctlr_stop(cpsw->dma);
  cpsw_destroy_xdp_rxqs(cpsw);
 }

 for_each_slave(priv, cpsw_slave_stop, cpsw);
 pm_runtime_put_sync(cpsw->dev);
 netif_carrier_off(priv->ndev);
 return ret;
}
