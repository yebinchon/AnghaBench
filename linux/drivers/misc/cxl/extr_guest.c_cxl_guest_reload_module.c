
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {struct platform_device* pdev; } ;


 int cxl_guest_remove_adapter (struct cxl*) ;
 int cxl_of_probe (struct platform_device*) ;

void cxl_guest_reload_module(struct cxl *adapter)
{
 struct platform_device *pdev;

 pdev = adapter->guest->pdev;
 cxl_guest_remove_adapter(adapter);

 cxl_of_probe(pdev);
}
