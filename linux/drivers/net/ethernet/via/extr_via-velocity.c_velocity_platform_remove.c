
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int velocity_remove (int *) ;

__attribute__((used)) static int velocity_platform_remove(struct platform_device *pdev)
{
 velocity_remove(&pdev->dev);

 return 0;
}
