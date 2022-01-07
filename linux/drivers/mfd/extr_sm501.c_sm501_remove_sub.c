
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_device {int pdev; int list; } ;
struct sm501_devdata {int dummy; } ;


 int list_del (int *) ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static void sm501_remove_sub(struct sm501_devdata *sm,
        struct sm501_device *smdev)
{
 list_del(&smdev->list);
 platform_device_unregister(&smdev->pdev);
}
