
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_2__* priv; } ;
struct TYPE_8__ {int version_id; scalar_t__ base; int write_bufferram; int read_bufferram; int wait; } ;
struct omap2_onenand {scalar_t__ dma_chan; TYPE_3__ mtd; int gpmc_cs; TYPE_2__ onenand; int phys_base; struct platform_device* pdev; scalar_t__ int_gpiod; int dma_done; int irq_done; } ;
struct gpmc_onenand_info {scalar_t__ sync_write; scalar_t__ sync_read; int burst_len; } ;
struct device_node {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_MEMCPY ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,...) ;
 scalar_t__ devm_gpiod_get_optional (struct device*,char*,int ) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct omap2_onenand* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct omap2_onenand*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (scalar_t__) ;
 scalar_t__ dma_request_channel (int ,int *,int *) ;
 int gpiod_to_irq (scalar_t__) ;
 int gpmc_omap_onenand_set_timings (struct device*,int ,int,int,struct gpmc_onenand_info*) ;
 int init_completion (int *) ;
 int mtd_device_register (TYPE_3__*,int *,int ) ;
 int mtd_set_of_node (TYPE_3__*,struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int omap2_onenand_get_freq (int ) ;
 int omap2_onenand_interrupt ;
 int omap2_onenand_read_bufferram ;
 int omap2_onenand_set_cfg (struct omap2_onenand*,scalar_t__,scalar_t__,int,int ) ;
 int omap2_onenand_wait ;
 int omap2_onenand_write_bufferram ;
 int onenand_release (TYPE_3__*) ;
 int onenand_scan (TYPE_3__*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct omap2_onenand*) ;

__attribute__((used)) static int omap2_onenand_probe(struct platform_device *pdev)
{
 u32 val;
 dma_cap_mask_t mask;
 int freq, latency, r;
 struct resource *res;
 struct omap2_onenand *c;
 struct gpmc_onenand_info info;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "error getting memory resource\n");
  return -EINVAL;
 }

 r = of_property_read_u32(np, "reg", &val);
 if (r) {
  dev_err(dev, "reg not found in DT\n");
  return r;
 }

 c = devm_kzalloc(dev, sizeof(struct omap2_onenand), GFP_KERNEL);
 if (!c)
  return -ENOMEM;

 init_completion(&c->irq_done);
 init_completion(&c->dma_done);
 c->gpmc_cs = val;
 c->phys_base = res->start;

 c->onenand.base = devm_ioremap_resource(dev, res);
 if (IS_ERR(c->onenand.base))
  return PTR_ERR(c->onenand.base);

 c->int_gpiod = devm_gpiod_get_optional(dev, "int", GPIOD_IN);
 if (IS_ERR(c->int_gpiod)) {
  r = PTR_ERR(c->int_gpiod);

  if (r != -EPROBE_DEFER)
   dev_err(dev, "error getting gpio: %d\n", r);
  return r;
 }

 if (c->int_gpiod) {
  r = devm_request_irq(dev, gpiod_to_irq(c->int_gpiod),
         omap2_onenand_interrupt,
         IRQF_TRIGGER_RISING, "onenand", c);
  if (r)
   return r;

  c->onenand.wait = omap2_onenand_wait;
 }

 dma_cap_zero(mask);
 dma_cap_set(DMA_MEMCPY, mask);

 c->dma_chan = dma_request_channel(mask, ((void*)0), ((void*)0));
 if (c->dma_chan) {
  c->onenand.read_bufferram = omap2_onenand_read_bufferram;
  c->onenand.write_bufferram = omap2_onenand_write_bufferram;
 }

 c->pdev = pdev;
 c->mtd.priv = &c->onenand;
 c->mtd.dev.parent = dev;
 mtd_set_of_node(&c->mtd, dev->of_node);

 dev_info(dev, "initializing on CS%d (0x%08lx), va %p, %s mode\n",
   c->gpmc_cs, c->phys_base, c->onenand.base,
   c->dma_chan ? "DMA" : "PIO");

 if ((r = onenand_scan(&c->mtd, 1)) < 0)
  goto err_release_dma;

 freq = omap2_onenand_get_freq(c->onenand.version_id);
 if (freq > 0) {
  switch (freq) {
  case 104:
   latency = 7;
   break;
  case 83:
   latency = 6;
   break;
  case 66:
   latency = 5;
   break;
  case 56:
   latency = 4;
   break;
  default:
   latency = 3;
   break;
  }

  r = gpmc_omap_onenand_set_timings(dev, c->gpmc_cs,
        freq, latency, &info);
  if (r)
   goto err_release_onenand;

  r = omap2_onenand_set_cfg(c, info.sync_read, info.sync_write,
       latency, info.burst_len);
  if (r)
   goto err_release_onenand;

  if (info.sync_read || info.sync_write)
   dev_info(dev, "optimized timings for %d MHz\n", freq);
 }

 r = mtd_device_register(&c->mtd, ((void*)0), 0);
 if (r)
  goto err_release_onenand;

 platform_set_drvdata(pdev, c);

 return 0;

err_release_onenand:
 onenand_release(&c->mtd);
err_release_dma:
 if (c->dma_chan)
  dma_release_channel(c->dma_chan);

 return r;
}
