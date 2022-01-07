
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucb1x00_dev {int drv_node; int dev_node; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* remove ) (struct ucb1x00_dev*) ;} ;


 int kfree (struct ucb1x00_dev*) ;
 int list_del (int *) ;
 int stub1 (struct ucb1x00_dev*) ;

__attribute__((used)) static void ucb1x00_remove_dev(struct ucb1x00_dev *dev)
{
 dev->drv->remove(dev);
 list_del(&dev->dev_node);
 list_del(&dev->drv_node);
 kfree(dev);
}
