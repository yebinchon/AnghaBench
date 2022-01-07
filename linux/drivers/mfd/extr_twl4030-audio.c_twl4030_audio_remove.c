
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int mfd_remove_devices (int *) ;
 int * twl4030_audio_dev ;

__attribute__((used)) static int twl4030_audio_remove(struct platform_device *pdev)
{
 mfd_remove_devices(&pdev->dev);
 twl4030_audio_dev = ((void*)0);

 return 0;
}
