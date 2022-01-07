
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;


 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 int free_irq (int ,struct net_device*) ;
 int tlan_free_lists (struct net_device*) ;
 int tlan_stop (struct net_device*) ;

__attribute__((used)) static int tlan_close(struct net_device *dev)
{
 tlan_stop(dev);

 free_irq(dev->irq, dev);
 tlan_free_lists(dev);
 TLAN_DBG(TLAN_DEBUG_GNRL, "Device %s closed.\n", dev->name);

 return 0;

}
