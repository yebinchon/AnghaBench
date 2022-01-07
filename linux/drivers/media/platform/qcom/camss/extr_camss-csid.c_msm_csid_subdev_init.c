
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct resources {int * regulator; scalar_t__** clock_rate; int * clock; int * interrupt; int * reg; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct csid_device {size_t nclocks; int reset_complete; int vdda; struct camss_clock* clock; int irq; int irq_name; int id; int base; void* nformats; void* formats; struct camss* camss; } ;
struct camss_clock {size_t nfreqs; scalar_t__* freq; int name; int clk; } ;
struct camss {scalar_t__ version; struct device* dev; } ;


 void* ARRAY_SIZE (void*) ;
 scalar_t__ CAMSS_8x16 ;
 scalar_t__ CAMSS_8x96 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 char* MSM_CSID_NAME ;
 int PTR_ERR (int ) ;
 void* csid_formats_8x16 ;
 void* csid_formats_8x96 ;
 int csid_isr ;
 int dev_err (struct device*,char*,...) ;
 char* dev_name (struct device*) ;
 int devm_clk_get (struct device*,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kcalloc (struct device*,size_t,int,int ) ;
 int devm_regulator_get (struct device*,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct csid_device*) ;
 int disable_irq (int ) ;
 int init_completion (int *) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,int ) ;
 int snprintf (int ,int,char*,char*,char*,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

int msm_csid_subdev_init(struct camss *camss, struct csid_device *csid,
    const struct resources *res, u8 id)
{
 struct device *dev = camss->dev;
 struct platform_device *pdev = to_platform_device(dev);
 struct resource *r;
 int i, j;
 int ret;

 csid->camss = camss;
 csid->id = id;

 if (camss->version == CAMSS_8x16) {
  csid->formats = csid_formats_8x16;
  csid->nformats =
    ARRAY_SIZE(csid_formats_8x16);
 } else if (camss->version == CAMSS_8x96) {
  csid->formats = csid_formats_8x96;
  csid->nformats =
    ARRAY_SIZE(csid_formats_8x96);
 } else {
  return -EINVAL;
 }



 r = platform_get_resource_byname(pdev, IORESOURCE_MEM, res->reg[0]);
 csid->base = devm_ioremap_resource(dev, r);
 if (IS_ERR(csid->base)) {
  dev_err(dev, "could not map memory\n");
  return PTR_ERR(csid->base);
 }



 r = platform_get_resource_byname(pdev, IORESOURCE_IRQ,
      res->interrupt[0]);
 if (!r) {
  dev_err(dev, "missing IRQ\n");
  return -EINVAL;
 }

 csid->irq = r->start;
 snprintf(csid->irq_name, sizeof(csid->irq_name), "%s_%s%d",
   dev_name(dev), MSM_CSID_NAME, csid->id);
 ret = devm_request_irq(dev, csid->irq, csid_isr,
  IRQF_TRIGGER_RISING, csid->irq_name, csid);
 if (ret < 0) {
  dev_err(dev, "request_irq failed: %d\n", ret);
  return ret;
 }

 disable_irq(csid->irq);



 csid->nclocks = 0;
 while (res->clock[csid->nclocks])
  csid->nclocks++;

 csid->clock = devm_kcalloc(dev, csid->nclocks, sizeof(*csid->clock),
        GFP_KERNEL);
 if (!csid->clock)
  return -ENOMEM;

 for (i = 0; i < csid->nclocks; i++) {
  struct camss_clock *clock = &csid->clock[i];

  clock->clk = devm_clk_get(dev, res->clock[i]);
  if (IS_ERR(clock->clk))
   return PTR_ERR(clock->clk);

  clock->name = res->clock[i];

  clock->nfreqs = 0;
  while (res->clock_rate[i][clock->nfreqs])
   clock->nfreqs++;

  if (!clock->nfreqs) {
   clock->freq = ((void*)0);
   continue;
  }

  clock->freq = devm_kcalloc(dev,
        clock->nfreqs,
        sizeof(*clock->freq),
        GFP_KERNEL);
  if (!clock->freq)
   return -ENOMEM;

  for (j = 0; j < clock->nfreqs; j++)
   clock->freq[j] = res->clock_rate[i][j];
 }



 csid->vdda = devm_regulator_get(dev, res->regulator[0]);
 if (IS_ERR(csid->vdda)) {
  dev_err(dev, "could not get regulator\n");
  return PTR_ERR(csid->vdda);
 }

 init_completion(&csid->reset_complete);

 return 0;
}
