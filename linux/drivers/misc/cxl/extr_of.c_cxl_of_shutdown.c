
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cxl_of_remove (struct platform_device*) ;

__attribute__((used)) static void cxl_of_shutdown(struct platform_device *pdev)
{
 cxl_of_remove(pdev);
}
