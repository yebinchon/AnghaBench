
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6387xb_platform_data {int (* enable ) (struct platform_device*) ;} ;
struct resource {char* name; scalar_t__ start; int flags; scalar_t__ end; } ;
struct tc6387xb {struct resource rscr; int scr; struct clk* clk32k; } ;
struct platform_device {int id; int dev; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 struct tc6387xb_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int ioremap (scalar_t__,int ) ;
 int iounmap (int ) ;
 int kfree (struct tc6387xb*) ;
 struct tc6387xb* kzalloc (int,int ) ;
 int mfd_add_devices (int *,int ,int ,int ,struct resource*,int,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tc6387xb*) ;
 int release_resource (struct resource*) ;
 int request_resource (struct resource*,struct resource*) ;
 int resource_size (struct resource*) ;
 int stub1 (struct platform_device*) ;
 int tc6387xb_cells ;

__attribute__((used)) static int tc6387xb_probe(struct platform_device *dev)
{
 struct tc6387xb_platform_data *pdata = dev_get_platdata(&dev->dev);
 struct resource *iomem, *rscr;
 struct clk *clk32k;
 struct tc6387xb *tc6387xb;
 int irq, ret;

 iomem = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!iomem)
  return -EINVAL;

 tc6387xb = kzalloc(sizeof(*tc6387xb), GFP_KERNEL);
 if (!tc6387xb)
  return -ENOMEM;

 ret = platform_get_irq(dev, 0);
 if (ret >= 0)
  irq = ret;
 else
  goto err_no_irq;

 clk32k = clk_get(&dev->dev, "CLK_CK32K");
 if (IS_ERR(clk32k)) {
  ret = PTR_ERR(clk32k);
  goto err_no_clk;
 }

 rscr = &tc6387xb->rscr;
 rscr->name = "tc6387xb-core";
 rscr->start = iomem->start;
 rscr->end = iomem->start + 0xff;
 rscr->flags = IORESOURCE_MEM;

 ret = request_resource(iomem, rscr);
 if (ret)
  goto err_resource;

 tc6387xb->scr = ioremap(rscr->start, resource_size(rscr));
 if (!tc6387xb->scr) {
  ret = -ENOMEM;
  goto err_ioremap;
 }

 tc6387xb->clk32k = clk32k;
 platform_set_drvdata(dev, tc6387xb);

 if (pdata && pdata->enable)
  pdata->enable(dev);

 dev_info(&dev->dev, "Toshiba tc6387xb initialised\n");

 ret = mfd_add_devices(&dev->dev, dev->id, tc6387xb_cells,
         ARRAY_SIZE(tc6387xb_cells), iomem, irq, ((void*)0));

 if (!ret)
  return 0;

 iounmap(tc6387xb->scr);
err_ioremap:
 release_resource(&tc6387xb->rscr);
err_resource:
 clk_put(clk32k);
err_no_clk:
err_no_irq:
 kfree(tc6387xb);
 return ret;
}
