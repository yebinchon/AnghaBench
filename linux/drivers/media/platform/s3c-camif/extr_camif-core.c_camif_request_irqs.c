
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct camif_vp {int irq_queue; } ;
struct camif_dev {struct camif_vp* vp; } ;


 int CAMIF_VP_NUM ;
 int ENXIO ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct camif_vp*) ;
 int init_waitqueue_head (int *) ;
 int platform_get_irq (struct platform_device*,int) ;
 int s3c_camif_irq_handler ;

__attribute__((used)) static int camif_request_irqs(struct platform_device *pdev,
         struct camif_dev *camif)
{
 int irq, ret, i;

 for (i = 0; i < CAMIF_VP_NUM; i++) {
  struct camif_vp *vp = &camif->vp[i];

  init_waitqueue_head(&vp->irq_queue);

  irq = platform_get_irq(pdev, i);
  if (irq <= 0)
   return -ENXIO;

  ret = devm_request_irq(&pdev->dev, irq, s3c_camif_irq_handler,
           0, dev_name(&pdev->dev), vp);
  if (ret < 0) {
   dev_err(&pdev->dev, "failed to install IRQ: %d\n", ret);
   break;
  }
 }

 return ret;
}
