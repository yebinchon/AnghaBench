
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_data {void (* cb ) (struct platform_device*) ;int base; int lock; struct platform_device* pdev; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int VPDMA_FIRMWARE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int pr_err (char*,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int vpdma_load_firmware (struct vpdma_data*) ;

int vpdma_create(struct platform_device *pdev, struct vpdma_data *vpdma,
  void (*cb)(struct platform_device *pdev))
{
 struct resource *res;
 int r;

 dev_dbg(&pdev->dev, "vpdma_create\n");

 vpdma->pdev = pdev;
 vpdma->cb = cb;
 spin_lock_init(&vpdma->lock);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vpdma");
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "missing platform resources data\n");
  return -ENODEV;
 }

 vpdma->base = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!vpdma->base) {
  dev_err(&pdev->dev, "failed to ioremap\n");
  return -ENOMEM;
 }

 r = vpdma_load_firmware(vpdma);
 if (r) {
  pr_err("failed to load firmware %s\n", VPDMA_FIRMWARE);
  return r;
 }

 return 0;
}
