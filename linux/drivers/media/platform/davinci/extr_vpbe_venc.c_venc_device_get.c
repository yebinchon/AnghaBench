
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_state {int dummy; } ;
struct platform_device {int name; } ;
struct device {int dummy; } ;


 struct venc_state* platform_get_drvdata (struct platform_device*) ;
 int * strstr (int ,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int venc_device_get(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct venc_state **venc = data;

 if (strstr(pdev->name, "vpbe-venc") != ((void*)0))
  *venc = platform_get_drvdata(pdev);

 return 0;
}
