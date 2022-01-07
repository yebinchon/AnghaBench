
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; TYPE_1__* id_entry; } ;
struct TYPE_4__ {int * ops; } ;
struct marvell_nfc {int * core_clk; int * reg_clk; void* caps; int * regs; int chips; TYPE_2__ controller; struct device* dev; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int * ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int NDCR_ALL_INT ;
 int PTR_ERR (int *) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct marvell_nfc* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct marvell_nfc*) ;
 int marvell_nand_chips_init (struct device*,struct marvell_nfc*) ;
 int marvell_nand_controller_ops ;
 int marvell_nfc_clear_int (struct marvell_nfc*,int ) ;
 int marvell_nfc_disable_int (struct marvell_nfc*,int ) ;
 int marvell_nfc_init (struct marvell_nfc*) ;
 int marvell_nfc_isr ;
 int nand_controller_init (TYPE_2__*) ;
 void* of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct marvell_nfc*) ;

__attribute__((used)) static int marvell_nfc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *r;
 struct marvell_nfc *nfc;
 int ret;
 int irq;

 nfc = devm_kzalloc(&pdev->dev, sizeof(struct marvell_nfc),
      GFP_KERNEL);
 if (!nfc)
  return -ENOMEM;

 nfc->dev = dev;
 nand_controller_init(&nfc->controller);
 nfc->controller.ops = &marvell_nand_controller_ops;
 INIT_LIST_HEAD(&nfc->chips);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 nfc->regs = devm_ioremap_resource(dev, r);
 if (IS_ERR(nfc->regs))
  return PTR_ERR(nfc->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "failed to retrieve irq\n");
  return irq;
 }

 nfc->core_clk = devm_clk_get(&pdev->dev, "core");


 if (nfc->core_clk == ERR_PTR(-ENOENT))
  nfc->core_clk = devm_clk_get(&pdev->dev, ((void*)0));

 if (IS_ERR(nfc->core_clk))
  return PTR_ERR(nfc->core_clk);

 ret = clk_prepare_enable(nfc->core_clk);
 if (ret)
  return ret;

 nfc->reg_clk = devm_clk_get(&pdev->dev, "reg");
 if (IS_ERR(nfc->reg_clk)) {
  if (PTR_ERR(nfc->reg_clk) != -ENOENT) {
   ret = PTR_ERR(nfc->reg_clk);
   goto unprepare_core_clk;
  }

  nfc->reg_clk = ((void*)0);
 }

 ret = clk_prepare_enable(nfc->reg_clk);
 if (ret)
  goto unprepare_core_clk;

 marvell_nfc_disable_int(nfc, NDCR_ALL_INT);
 marvell_nfc_clear_int(nfc, NDCR_ALL_INT);
 ret = devm_request_irq(dev, irq, marvell_nfc_isr,
          0, "marvell-nfc", nfc);
 if (ret)
  goto unprepare_reg_clk;


 if (pdev->id_entry)
  nfc->caps = (void *)pdev->id_entry->driver_data;
 else
  nfc->caps = of_device_get_match_data(&pdev->dev);

 if (!nfc->caps) {
  dev_err(dev, "Could not retrieve NFC caps\n");
  ret = -EINVAL;
  goto unprepare_reg_clk;
 }


 ret = marvell_nfc_init(nfc);
 if (ret)
  goto unprepare_reg_clk;

 platform_set_drvdata(pdev, nfc);

 ret = marvell_nand_chips_init(dev, nfc);
 if (ret)
  goto unprepare_reg_clk;

 return 0;

unprepare_reg_clk:
 clk_disable_unprepare(nfc->reg_clk);
unprepare_core_clk:
 clk_disable_unprepare(nfc->core_clk);

 return ret;
}
