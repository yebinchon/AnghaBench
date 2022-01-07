
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct hix5hd2_priv {int napi; int mac_core_clk; int mac_ifc_clk; int phy_mode; int phy_node; } ;


 int ENODEV ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int hix5hd2_adjust_link ;
 int hix5hd2_hw_init (struct hix5hd2_priv*) ;
 int hix5hd2_irq_enable (struct hix5hd2_priv*) ;
 int hix5hd2_port_enable (struct hix5hd2_priv*) ;
 int hix5hd2_rx_refill (struct hix5hd2_priv*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int netdev_reset_queue (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int *,int ,int ) ;
 int phy_start (struct phy_device*) ;

__attribute__((used)) static int hix5hd2_net_open(struct net_device *dev)
{
 struct hix5hd2_priv *priv = netdev_priv(dev);
 struct phy_device *phy;
 int ret;

 ret = clk_prepare_enable(priv->mac_core_clk);
 if (ret < 0) {
  netdev_err(dev, "failed to enable mac core clk %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(priv->mac_ifc_clk);
 if (ret < 0) {
  clk_disable_unprepare(priv->mac_core_clk);
  netdev_err(dev, "failed to enable mac ifc clk %d\n", ret);
  return ret;
 }

 phy = of_phy_connect(dev, priv->phy_node,
        &hix5hd2_adjust_link, 0, priv->phy_mode);
 if (!phy) {
  clk_disable_unprepare(priv->mac_ifc_clk);
  clk_disable_unprepare(priv->mac_core_clk);
  return -ENODEV;
 }

 phy_start(phy);
 hix5hd2_hw_init(priv);
 hix5hd2_rx_refill(priv);

 netdev_reset_queue(dev);
 netif_start_queue(dev);
 napi_enable(&priv->napi);

 hix5hd2_port_enable(priv);
 hix5hd2_irq_enable(priv);

 return 0;
}
