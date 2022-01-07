
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fastrpc_cb_driver ;
 int fastrpc_driver ;
 int platform_driver_unregister (int *) ;
 int unregister_rpmsg_driver (int *) ;

__attribute__((used)) static void fastrpc_exit(void)
{
 platform_driver_unregister(&fastrpc_cb_driver);
 unregister_rpmsg_driver(&fastrpc_driver);
}
