
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_ecc {int lock; struct device* dev; int clk; int regs; void* eccdata; TYPE_1__* caps; } ;
struct TYPE_2__ {size_t num_ecc_strength; size_t* ecc_strength; size_t parity_bits; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,size_t,int ) ;
 int devm_request_irq (struct device*,int,int ,int,char*,struct mtk_ecc*) ;
 int dma_set_mask (struct device*,int ) ;
 int mtk_ecc_irq ;
 int mutex_init (int *) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_ecc*) ;
 size_t round_up (size_t,int) ;

__attribute__((used)) static int mtk_ecc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_ecc *ecc;
 struct resource *res;
 u32 max_eccdata_size;
 int irq, ret;

 ecc = devm_kzalloc(dev, sizeof(*ecc), GFP_KERNEL);
 if (!ecc)
  return -ENOMEM;

 ecc->caps = of_device_get_match_data(dev);

 max_eccdata_size = ecc->caps->num_ecc_strength - 1;
 max_eccdata_size = ecc->caps->ecc_strength[max_eccdata_size];
 max_eccdata_size = (max_eccdata_size * ecc->caps->parity_bits + 7) >> 3;
 max_eccdata_size = round_up(max_eccdata_size, 4);
 ecc->eccdata = devm_kzalloc(dev, max_eccdata_size, GFP_KERNEL);
 if (!ecc->eccdata)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ecc->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(ecc->regs)) {
  dev_err(dev, "failed to map regs: %ld\n", PTR_ERR(ecc->regs));
  return PTR_ERR(ecc->regs);
 }

 ecc->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ecc->clk)) {
  dev_err(dev, "failed to get clock: %ld\n", PTR_ERR(ecc->clk));
  return PTR_ERR(ecc->clk);
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "failed to get irq: %d\n", irq);
  return irq;
 }

 ret = dma_set_mask(dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(dev, "failed to set DMA mask\n");
  return ret;
 }

 ret = devm_request_irq(dev, irq, mtk_ecc_irq, 0x0, "mtk-ecc", ecc);
 if (ret) {
  dev_err(dev, "failed to request irq\n");
  return -EINVAL;
 }

 ecc->dev = dev;
 mutex_init(&ecc->lock);
 platform_set_drvdata(pdev, ecc);
 dev_info(dev, "probed\n");

 return 0;
}
