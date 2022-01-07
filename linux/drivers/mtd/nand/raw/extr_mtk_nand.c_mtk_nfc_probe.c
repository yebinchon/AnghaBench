
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {void* pad_clk; void* nfi_clk; } ;
struct TYPE_4__ {int * ops; } ;
struct mtk_nfc {void* ecc; TYPE_2__ clk; void* regs; struct device* dev; int caps; TYPE_1__ controller; int chips; } ;
struct device_node {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_nfc* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int,char*,struct mtk_nfc*) ;
 int dma_set_mask (struct device*,int ) ;
 int mtk_ecc_release (void*) ;
 int mtk_nfc_controller_ops ;
 int mtk_nfc_disable_clk (TYPE_2__*) ;
 int mtk_nfc_enable_clk (struct device*,TYPE_2__*) ;
 int mtk_nfc_irq ;
 int mtk_nfc_nand_chips_init (struct device*,struct mtk_nfc*) ;
 int nand_controller_init (TYPE_1__*) ;
 int of_device_get_match_data (struct device*) ;
 void* of_mtk_ecc_get (struct device_node*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_nfc*) ;

__attribute__((used)) static int mtk_nfc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct mtk_nfc *nfc;
 struct resource *res;
 int ret, irq;

 nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
 if (!nfc)
  return -ENOMEM;

 nand_controller_init(&nfc->controller);
 INIT_LIST_HEAD(&nfc->chips);
 nfc->controller.ops = &mtk_nfc_controller_ops;


 nfc->ecc = of_mtk_ecc_get(np);
 if (IS_ERR(nfc->ecc))
  return PTR_ERR(nfc->ecc);
 else if (!nfc->ecc)
  return -ENODEV;

 nfc->caps = of_device_get_match_data(dev);
 nfc->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 nfc->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(nfc->regs)) {
  ret = PTR_ERR(nfc->regs);
  goto release_ecc;
 }

 nfc->clk.nfi_clk = devm_clk_get(dev, "nfi_clk");
 if (IS_ERR(nfc->clk.nfi_clk)) {
  dev_err(dev, "no clk\n");
  ret = PTR_ERR(nfc->clk.nfi_clk);
  goto release_ecc;
 }

 nfc->clk.pad_clk = devm_clk_get(dev, "pad_clk");
 if (IS_ERR(nfc->clk.pad_clk)) {
  dev_err(dev, "no pad clk\n");
  ret = PTR_ERR(nfc->clk.pad_clk);
  goto release_ecc;
 }

 ret = mtk_nfc_enable_clk(dev, &nfc->clk);
 if (ret)
  goto release_ecc;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "no nfi irq resource\n");
  ret = -EINVAL;
  goto clk_disable;
 }

 ret = devm_request_irq(dev, irq, mtk_nfc_irq, 0x0, "mtk-nand", nfc);
 if (ret) {
  dev_err(dev, "failed to request nfi irq\n");
  goto clk_disable;
 }

 ret = dma_set_mask(dev, DMA_BIT_MASK(32));
 if (ret) {
  dev_err(dev, "failed to set dma mask\n");
  goto clk_disable;
 }

 platform_set_drvdata(pdev, nfc);

 ret = mtk_nfc_nand_chips_init(dev, nfc);
 if (ret) {
  dev_err(dev, "failed to init nand chips\n");
  goto clk_disable;
 }

 return 0;

clk_disable:
 mtk_nfc_disable_clk(&nfc->clk);

release_ecc:
 mtk_ecc_release(nfc->ecc);

 return ret;
}
