
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddb_class_destroy () ;
 int ddb_wq ;
 int destroy_workqueue (int ) ;

int ddb_exit_ddbridge(int stage, int error)
{
 switch (stage) {
 default:
 case 2:
  destroy_workqueue(ddb_wq);

 case 1:
  ddb_class_destroy();
  break;
 }

 return error;
}
