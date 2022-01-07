
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcmcia_device {int config_index; int dev; struct net_device* priv; int config_flags; TYPE_1__** resource; } ;
struct net_device {TYPE_2__* wireless_data; int * wireless_handlers; int * netdev_ops; } ;
struct TYPE_6__ {int * spy_data; } ;
struct TYPE_7__ {int timer; TYPE_2__ wireless_data; int spy_data; scalar_t__ num_multi; int authentication_state; int card_status; struct pcmcia_device* finder; } ;
typedef TYPE_3__ ray_dev_t ;
struct TYPE_5__ {int flags; scalar_t__ end; } ;


 int CARD_INSERTED ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int IO_DATA_PATH_WIDTH_8 ;
 int UNAUTHENTICATED ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*,...) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int ray_config (struct pcmcia_device*) ;
 int ray_handler_def ;
 int ray_interrupt ;
 int ray_netdev_ops ;
 struct pcmcia_device* this_device ;
 int timer_setup (int *,int *,int ) ;

__attribute__((used)) static int ray_probe(struct pcmcia_device *p_dev)
{
 ray_dev_t *local;
 struct net_device *dev;

 dev_dbg(&p_dev->dev, "ray_attach()\n");


 dev = alloc_etherdev(sizeof(ray_dev_t));
 if (!dev)
  goto fail_alloc_dev;

 local = netdev_priv(dev);
 local->finder = p_dev;


 p_dev->resource[0]->end = 0;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;


 p_dev->config_flags |= CONF_ENABLE_IRQ;
 p_dev->config_index = 1;

 p_dev->priv = dev;

 local->finder = p_dev;
 local->card_status = CARD_INSERTED;
 local->authentication_state = UNAUTHENTICATED;
 local->num_multi = 0;
 dev_dbg(&p_dev->dev, "ray_attach p_dev = %p,  dev = %p,  local = %p, intr = %p\n",
       p_dev, dev, local, &ray_interrupt);


 dev->netdev_ops = &ray_netdev_ops;
 dev->wireless_handlers = &ray_handler_def;






 dev_dbg(&p_dev->dev, "ray_cs ray_attach calling ether_setup.)\n");
 netif_stop_queue(dev);

 timer_setup(&local->timer, ((void*)0), 0);

 this_device = p_dev;
 return ray_config(p_dev);

fail_alloc_dev:
 return -ENOMEM;
}
