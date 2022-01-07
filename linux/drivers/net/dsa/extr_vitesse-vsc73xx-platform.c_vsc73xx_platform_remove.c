
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc73xx_platform {int vsc; } ;
struct platform_device {int dummy; } ;


 struct vsc73xx_platform* platform_get_drvdata (struct platform_device*) ;
 int vsc73xx_remove (int *) ;

__attribute__((used)) static int vsc73xx_platform_remove(struct platform_device *pdev)
{
 struct vsc73xx_platform *vsc_platform = platform_get_drvdata(pdev);

 return vsc73xx_remove(&vsc_platform->vsc);
}
