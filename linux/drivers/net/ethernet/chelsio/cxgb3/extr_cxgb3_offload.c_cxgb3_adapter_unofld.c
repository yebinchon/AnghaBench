
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int * neigh_update; int * recv; } ;
struct adapter {struct t3cdev tdev; } ;


 int unregister_tdev (struct t3cdev*) ;

void cxgb3_adapter_unofld(struct adapter *adapter)
{
 struct t3cdev *tdev = &adapter->tdev;

 tdev->recv = ((void*)0);
 tdev->neigh_update = ((void*)0);

 unregister_tdev(tdev);
}
