
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resources_ispif {int * clock_for_reset; int * clock; int interrupt; int * reg; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct ispif_device {int line_num; size_t nclocks; size_t nclocks_for_reset; int reset_complete; int config_lock; scalar_t__ power_count; int power_lock; struct camss_clock* clock_for_reset; struct camss_clock* clock; int irq_name; int irq; void* base_clk_mux; void* base; TYPE_1__* line; } ;
struct device {int dummy; } ;
struct camss_clock {scalar_t__ nfreqs; int * freq; void* clk; } ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_3__ {int id; void* nformats; void* formats; struct ispif_device* ispif; } ;


 void* ARRAY_SIZE (void*) ;
 scalar_t__ CAMSS_8x16 ;
 scalar_t__ CAMSS_8x96 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 char* MSM_ISPIF_NAME ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 char* dev_name (struct device*) ;
 void* devm_clk_get (struct device*,int ) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct ispif_device*) ;
 int init_completion (int *) ;
 void* ispif_formats_8x16 ;
 void* ispif_formats_8x96 ;
 int ispif_isr_8x16 ;
 int ispif_isr_8x96 ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,int ) ;
 int snprintf (int ,int,char*,char*,char*) ;
 TYPE_2__* to_camss (struct ispif_device*) ;
 struct device* to_device (struct ispif_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

int msm_ispif_subdev_init(struct ispif_device *ispif,
     const struct resources_ispif *res)
{
 struct device *dev = to_device(ispif);
 struct platform_device *pdev = to_platform_device(dev);
 struct resource *r;
 int i;
 int ret;


 if (to_camss(ispif)->version == CAMSS_8x16)
  ispif->line_num = 2;
 else if (to_camss(ispif)->version == CAMSS_8x96)
  ispif->line_num = 4;
 else
  return -EINVAL;

 ispif->line = devm_kcalloc(dev, ispif->line_num, sizeof(*ispif->line),
       GFP_KERNEL);
 if (!ispif->line)
  return -ENOMEM;

 for (i = 0; i < ispif->line_num; i++) {
  ispif->line[i].ispif = ispif;
  ispif->line[i].id = i;

  if (to_camss(ispif)->version == CAMSS_8x16) {
   ispif->line[i].formats = ispif_formats_8x16;
   ispif->line[i].nformats =
     ARRAY_SIZE(ispif_formats_8x16);
  } else if (to_camss(ispif)->version == CAMSS_8x96) {
   ispif->line[i].formats = ispif_formats_8x96;
   ispif->line[i].nformats =
     ARRAY_SIZE(ispif_formats_8x96);
  } else {
   return -EINVAL;
  }
 }



 r = platform_get_resource_byname(pdev, IORESOURCE_MEM, res->reg[0]);
 ispif->base = devm_ioremap_resource(dev, r);
 if (IS_ERR(ispif->base)) {
  dev_err(dev, "could not map memory\n");
  return PTR_ERR(ispif->base);
 }

 r = platform_get_resource_byname(pdev, IORESOURCE_MEM, res->reg[1]);
 ispif->base_clk_mux = devm_ioremap_resource(dev, r);
 if (IS_ERR(ispif->base_clk_mux)) {
  dev_err(dev, "could not map memory\n");
  return PTR_ERR(ispif->base_clk_mux);
 }



 r = platform_get_resource_byname(pdev, IORESOURCE_IRQ, res->interrupt);

 if (!r) {
  dev_err(dev, "missing IRQ\n");
  return -EINVAL;
 }

 ispif->irq = r->start;
 snprintf(ispif->irq_name, sizeof(ispif->irq_name), "%s_%s",
   dev_name(dev), MSM_ISPIF_NAME);
 if (to_camss(ispif)->version == CAMSS_8x16)
  ret = devm_request_irq(dev, ispif->irq, ispif_isr_8x16,
          IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
 else if (to_camss(ispif)->version == CAMSS_8x96)
  ret = devm_request_irq(dev, ispif->irq, ispif_isr_8x96,
          IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
 else
  ret = -EINVAL;
 if (ret < 0) {
  dev_err(dev, "request_irq failed: %d\n", ret);
  return ret;
 }



 ispif->nclocks = 0;
 while (res->clock[ispif->nclocks])
  ispif->nclocks++;

 ispif->clock = devm_kcalloc(dev,
        ispif->nclocks, sizeof(*ispif->clock),
        GFP_KERNEL);
 if (!ispif->clock)
  return -ENOMEM;

 for (i = 0; i < ispif->nclocks; i++) {
  struct camss_clock *clock = &ispif->clock[i];

  clock->clk = devm_clk_get(dev, res->clock[i]);
  if (IS_ERR(clock->clk))
   return PTR_ERR(clock->clk);

  clock->freq = ((void*)0);
  clock->nfreqs = 0;
 }

 ispif->nclocks_for_reset = 0;
 while (res->clock_for_reset[ispif->nclocks_for_reset])
  ispif->nclocks_for_reset++;

 ispif->clock_for_reset = devm_kcalloc(dev,
           ispif->nclocks_for_reset,
           sizeof(*ispif->clock_for_reset),
           GFP_KERNEL);
 if (!ispif->clock_for_reset)
  return -ENOMEM;

 for (i = 0; i < ispif->nclocks_for_reset; i++) {
  struct camss_clock *clock = &ispif->clock_for_reset[i];

  clock->clk = devm_clk_get(dev, res->clock_for_reset[i]);
  if (IS_ERR(clock->clk))
   return PTR_ERR(clock->clk);

  clock->freq = ((void*)0);
  clock->nfreqs = 0;
 }

 mutex_init(&ispif->power_lock);
 ispif->power_count = 0;

 mutex_init(&ispif->config_lock);

 init_completion(&ispif->reset_complete);

 return 0;
}
