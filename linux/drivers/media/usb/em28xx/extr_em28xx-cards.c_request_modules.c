
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int request_module_wk; } ;


 int INIT_WORK (int *,int ) ;
 int request_module_async ;
 int schedule_work (int *) ;

__attribute__((used)) static void request_modules(struct em28xx *dev)
{
 INIT_WORK(&dev->request_module_wk, request_module_async);
 schedule_work(&dev->request_module_wk);
}
