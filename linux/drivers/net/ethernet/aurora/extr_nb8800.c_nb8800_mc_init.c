
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nb8800_priv {scalar_t__ base; } ;


 scalar_t__ NB8800_MC_INIT ;
 int nb8800_writeb (struct nb8800_priv*,scalar_t__,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int readb_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static void nb8800_mc_init(struct net_device *dev, int val)
{
 struct nb8800_priv *priv = netdev_priv(dev);

 nb8800_writeb(priv, NB8800_MC_INIT, val);
 readb_poll_timeout_atomic(priv->base + NB8800_MC_INIT, val, !val,
      1, 1000);
}
