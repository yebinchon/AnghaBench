
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int rpmsg_driver; } ;


 int unregister_rpmsg_driver (int *) ;

void delta_ipc_exit(struct delta_dev *delta)
{
 unregister_rpmsg_driver(&delta->rpmsg_driver);
}
