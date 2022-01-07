
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct s3c_onenand {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct onenand_platform_data {int nr_parts; int * parts; } ;
struct onenand_chip {int subpagesize; int options; void* base; } ;
struct TYPE_5__ {int * parent; } ;
struct mtd_info {int writesize; scalar_t__ subpage_sft; TYPE_1__ dev; struct onenand_chip* priv; } ;
struct TYPE_7__ {scalar_t__ type; struct platform_device* pdev; int complete; void* dma_addr; void* oob_buf; void* page_buf; void* ahb_addr; void* base; int phys_base; } ;
struct TYPE_6__ {scalar_t__ driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (void*) ;
 int MEM_CFG_OFFSET ;
 int ONENAND_SKIP_UNLOCK_CHECK ;
 int ONENAND_SYS_CFG1_SYNC_READ ;
 int PTR_ERR (void*) ;
 int SZ_4K ;
 scalar_t__ TYPE_S5PC110 ;
 int dev_err (int *,char*) ;
 struct onenand_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int ,int ,int ,char*,TYPE_3__**) ;
 int init_completion (int *) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 TYPE_3__* onenand ;
 int onenand_release (struct mtd_info*) ;
 int onenand_scan (struct mtd_info*,int) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct mtd_info*) ;
 int s3c_onenand_setup (struct mtd_info*) ;
 int s3c_read_reg (int ) ;
 int s5pc110_dma_irq ;
 int s5pc110_dma_ops ;
 int s5pc110_dma_poll ;
 int s5pc110_onenand_irq ;

__attribute__((used)) static int s3c_onenand_probe(struct platform_device *pdev)
{
 struct onenand_platform_data *pdata;
 struct onenand_chip *this;
 struct mtd_info *mtd;
 struct resource *r;
 int size, err;

 pdata = dev_get_platdata(&pdev->dev);


 size = sizeof(struct mtd_info) + sizeof(struct onenand_chip);
 mtd = devm_kzalloc(&pdev->dev, size, GFP_KERNEL);
 if (!mtd)
  return -ENOMEM;

 onenand = devm_kzalloc(&pdev->dev, sizeof(struct s3c_onenand),
          GFP_KERNEL);
 if (!onenand)
  return -ENOMEM;

 this = (struct onenand_chip *) &mtd[1];
 mtd->priv = this;
 mtd->dev.parent = &pdev->dev;
 onenand->pdev = pdev;
 onenand->type = platform_get_device_id(pdev)->driver_data;

 s3c_onenand_setup(mtd);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 onenand->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(onenand->base))
  return PTR_ERR(onenand->base);

 onenand->phys_base = r->start;


 this->base = onenand->base;


 this->options |= ONENAND_SKIP_UNLOCK_CHECK;

 if (onenand->type != TYPE_S5PC110) {
  r = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  onenand->ahb_addr = devm_ioremap_resource(&pdev->dev, r);
  if (IS_ERR(onenand->ahb_addr))
   return PTR_ERR(onenand->ahb_addr);


  onenand->page_buf = devm_kzalloc(&pdev->dev, SZ_4K,
       GFP_KERNEL);
  if (!onenand->page_buf)
   return -ENOMEM;


  onenand->oob_buf = devm_kzalloc(&pdev->dev, 128, GFP_KERNEL);
  if (!onenand->oob_buf)
   return -ENOMEM;


  mtd->subpage_sft = 0;
  this->subpagesize = mtd->writesize;

 } else {
  r = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  onenand->dma_addr = devm_ioremap_resource(&pdev->dev, r);
  if (IS_ERR(onenand->dma_addr))
   return PTR_ERR(onenand->dma_addr);

  s5pc110_dma_ops = s5pc110_dma_poll;

  r = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
  if (r) {
   init_completion(&onenand->complete);
   s5pc110_dma_ops = s5pc110_dma_irq;
   err = devm_request_irq(&pdev->dev, r->start,
            s5pc110_onenand_irq,
            IRQF_SHARED, "onenand",
            &onenand);
   if (err) {
    dev_err(&pdev->dev, "failed to get irq\n");
    return err;
   }
  }
 }

 err = onenand_scan(mtd, 1);
 if (err)
  return err;

 if (onenand->type != TYPE_S5PC110) {

  mtd->subpage_sft = 0;
  this->subpagesize = mtd->writesize;
 }

 if (s3c_read_reg(MEM_CFG_OFFSET) & ONENAND_SYS_CFG1_SYNC_READ)
  dev_info(&onenand->pdev->dev, "OneNAND Sync. Burst Read enabled\n");

 err = mtd_device_register(mtd, pdata ? pdata->parts : ((void*)0),
      pdata ? pdata->nr_parts : 0);
 if (err) {
  dev_err(&pdev->dev, "failed to parse partitions and register the MTD device\n");
  onenand_release(mtd);
  return err;
 }

 platform_set_drvdata(pdev, mtd);

 return 0;
}
