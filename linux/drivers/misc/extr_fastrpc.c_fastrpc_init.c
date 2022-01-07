
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fastrpc_cb_driver ;
 int fastrpc_driver ;
 int platform_driver_register (int *) ;
 int platform_driver_unregister (int *) ;
 int pr_err (char*) ;
 int register_rpmsg_driver (int *) ;

__attribute__((used)) static int fastrpc_init(void)
{
 int ret;

 ret = platform_driver_register(&fastrpc_cb_driver);
 if (ret < 0) {
  pr_err("fastrpc: failed to register cb driver\n");
  return ret;
 }

 ret = register_rpmsg_driver(&fastrpc_driver);
 if (ret < 0) {
  pr_err("fastrpc: failed to register rpmsg driver\n");
  platform_driver_unregister(&fastrpc_cb_driver);
  return ret;
 }

 return 0;
}
