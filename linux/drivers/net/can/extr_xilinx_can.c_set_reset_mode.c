
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int ) ;scalar_t__ tx_tail; scalar_t__ tx_head; int (* write_reg ) (struct xcan_priv*,int ,int ) ;} ;
struct net_device {int dummy; } ;


 int ETIMEDOUT ;
 int XCAN_SRR_OFFSET ;
 int XCAN_SRR_RESET_MASK ;
 int XCAN_SR_CONFIG_MASK ;
 int XCAN_SR_OFFSET ;
 unsigned long XCAN_TIMEOUT ;
 unsigned long jiffies ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int stub1 (struct xcan_priv*,int ,int ) ;
 int stub2 (struct xcan_priv*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int set_reset_mode(struct net_device *ndev)
{
 struct xcan_priv *priv = netdev_priv(ndev);
 unsigned long timeout;

 priv->write_reg(priv, XCAN_SRR_OFFSET, XCAN_SRR_RESET_MASK);

 timeout = jiffies + XCAN_TIMEOUT;
 while (!(priv->read_reg(priv, XCAN_SR_OFFSET) & XCAN_SR_CONFIG_MASK)) {
  if (time_after(jiffies, timeout)) {
   netdev_warn(ndev, "timed out for config mode\n");
   return -ETIMEDOUT;
  }
  usleep_range(500, 10000);
 }


 priv->tx_head = 0;
 priv->tx_tail = 0;

 return 0;
}
