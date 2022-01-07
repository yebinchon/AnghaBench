
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdoa_data {int * dev; int regs; int vdoa_clk; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct vdoa_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,char*,struct vdoa_data*) ;
 int dma_set_coherent_mask (int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vdoa_data*) ;
 int vdoa_irq_handler ;

__attribute__((used)) static int vdoa_probe(struct platform_device *pdev)
{
 struct vdoa_data *vdoa;
 struct resource *res;
 int ret;

 dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));

 vdoa = devm_kzalloc(&pdev->dev, sizeof(*vdoa), GFP_KERNEL);
 if (!vdoa)
  return -ENOMEM;

 vdoa->dev = &pdev->dev;

 vdoa->vdoa_clk = devm_clk_get(vdoa->dev, ((void*)0));
 if (IS_ERR(vdoa->vdoa_clk)) {
  dev_err(vdoa->dev, "Failed to get clock\n");
  return PTR_ERR(vdoa->vdoa_clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 vdoa->regs = devm_ioremap_resource(vdoa->dev, res);
 if (IS_ERR(vdoa->regs))
  return PTR_ERR(vdoa->regs);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res)
  return -EINVAL;
 ret = devm_request_threaded_irq(&pdev->dev, res->start, ((void*)0),
     vdoa_irq_handler, IRQF_ONESHOT,
     "vdoa", vdoa);
 if (ret < 0) {
  dev_err(vdoa->dev, "Failed to get irq\n");
  return ret;
 }

 platform_set_drvdata(pdev, vdoa);

 return 0;
}
