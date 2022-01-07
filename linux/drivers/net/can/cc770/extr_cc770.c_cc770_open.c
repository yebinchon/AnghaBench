
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;
struct cc770_priv {int irq_flags; } ;


 int EAGAIN ;
 int cc770_interrupt ;
 int cc770_start (struct net_device*) ;
 int close_candev (struct net_device*) ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int set_reset_mode (struct net_device*) ;

__attribute__((used)) static int cc770_open(struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);
 int err;


 set_reset_mode(dev);


 err = open_candev(dev);
 if (err)
  return err;

 err = request_irq(dev->irq, &cc770_interrupt, priv->irq_flags,
     dev->name, dev);
 if (err) {
  close_candev(dev);
  return -EAGAIN;
 }


 cc770_start(dev);

 netif_start_queue(dev);

 return 0;
}
