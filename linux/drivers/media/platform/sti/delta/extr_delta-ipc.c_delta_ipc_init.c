
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int rpmsg_driver; } ;


 int delta_rpmsg_driver ;
 int register_rpmsg_driver (int *) ;

int delta_ipc_init(struct delta_dev *delta)
{
 delta->rpmsg_driver = delta_rpmsg_driver;

 return register_rpmsg_driver(&delta->rpmsg_driver);
}
