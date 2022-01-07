
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ULI526X_DBUG (int ,char*,int ) ;
 int netif_wake_queue (struct net_device*) ;
 int uli526x_init (struct net_device*) ;
 int uli526x_reset_prepare (struct net_device*) ;

__attribute__((used)) static void uli526x_dynamic_reset(struct net_device *dev)
{
 ULI526X_DBUG(0, "uli526x_dynamic_reset()", 0);

 uli526x_reset_prepare(dev);


 uli526x_init(dev);


 netif_wake_queue(dev);
}
