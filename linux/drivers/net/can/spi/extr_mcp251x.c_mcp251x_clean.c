
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct mcp251x_priv {scalar_t__ tx_len; int * tx_skb; int net; } ;


 int can_free_echo_skb (int ,int ) ;
 int dev_kfree_skb (int *) ;
 struct mcp251x_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mcp251x_clean(struct net_device *net)
{
 struct mcp251x_priv *priv = netdev_priv(net);

 if (priv->tx_skb || priv->tx_len)
  net->stats.tx_errors++;
 dev_kfree_skb(priv->tx_skb);
 if (priv->tx_len)
  can_free_echo_skb(priv->net, 0);
 priv->tx_skb = ((void*)0);
 priv->tx_len = 0;
}
