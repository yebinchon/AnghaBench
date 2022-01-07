
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ksz_port {int first_port; int port_cnt; struct ksz_hw* hw; } ;
struct ksz_hw {int dummy; } ;
struct dev_priv {struct ksz_port port; } ;


 int hw_w_phy (struct ksz_hw*,int,int,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int phy_id, int reg_num, int val)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct ksz_port *port = &priv->port;
 struct ksz_hw *hw = port->hw;
 int i;
 int pi;

 for (i = 0, pi = port->first_port; i < port->port_cnt; i++, pi++)
  hw_w_phy(hw, pi, reg_num << 1, val);
}
