
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int wbsd_shutdown (int *,int ) ;

__attribute__((used)) static int wbsd_remove(struct platform_device *dev)
{
 wbsd_shutdown(&dev->dev, 0);

 return 0;
}
