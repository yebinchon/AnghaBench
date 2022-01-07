
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct venc_state {scalar_t__ venc_type; TYPE_1__* pdev; int lock; void* vdaccfg_reg; void* venc_base; scalar_t__ pdata; } ;
struct resource {int dummy; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 scalar_t__ VPBE_VERSION_1 ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_notice (TYPE_1__*,char*) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct venc_state* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct venc_state*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int venc_probe(struct platform_device *pdev)
{
 const struct platform_device_id *pdev_id;
 struct venc_state *venc;
 struct resource *res;

 if (!pdev->dev.platform_data) {
  dev_err(&pdev->dev, "No platform data for VENC sub device");
  return -EINVAL;
 }

 pdev_id = platform_get_device_id(pdev);
 if (!pdev_id)
  return -EINVAL;

 venc = devm_kzalloc(&pdev->dev, sizeof(struct venc_state), GFP_KERNEL);
 if (venc == ((void*)0))
  return -ENOMEM;

 venc->venc_type = pdev_id->driver_data;
 venc->pdev = &pdev->dev;
 venc->pdata = pdev->dev.platform_data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 venc->venc_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(venc->venc_base))
  return PTR_ERR(venc->venc_base);

 if (venc->venc_type != VPBE_VERSION_1) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 1);

  venc->vdaccfg_reg = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(venc->vdaccfg_reg))
   return PTR_ERR(venc->vdaccfg_reg);
 }
 spin_lock_init(&venc->lock);
 platform_set_drvdata(pdev, venc);
 dev_notice(venc->pdev, "VENC sub device probe success\n");

 return 0;
}
