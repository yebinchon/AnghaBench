
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {int dev_enc; int vdev_enc; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct venus_core* dev_get_drvdata (int ) ;
 int pm_runtime_disable (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int venc_remove(struct platform_device *pdev)
{
 struct venus_core *core = dev_get_drvdata(pdev->dev.parent);

 video_unregister_device(core->vdev_enc);
 pm_runtime_disable(core->dev_enc);

 return 0;
}
