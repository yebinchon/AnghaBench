
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gemini_ethernet {int freeq_lock; int irq_lock; scalar_t__ base; struct device* dev; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GLOBAL_TOE_VERSION_REG ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int barrier () ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int,int) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct gemini_ethernet* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_platform_populate (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gemini_ethernet*) ;
 int readl (scalar_t__) ;
 int spin_lock_init (int *) ;
 int udelay (int) ;

__attribute__((used)) static int gemini_ethernet_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct gemini_ethernet *geth;
 unsigned int retry = 5;
 struct resource *res;
 u32 val;


 geth = devm_kzalloc(dev, sizeof(*geth), GFP_KERNEL);
 if (!geth)
  return -ENOMEM;
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;
 geth->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(geth->base))
  return PTR_ERR(geth->base);
 geth->dev = dev;


 do {
  udelay(2);
  val = readl(geth->base + GLOBAL_TOE_VERSION_REG);
  barrier();
 } while (!val && --retry);
 if (!retry) {
  dev_err(dev, "failed to reset ethernet\n");
  return -EIO;
 }
 dev_info(dev, "Ethernet device ID: 0x%03x, revision 0x%01x\n",
   (val >> 4) & 0xFFFU, val & 0xFU);

 spin_lock_init(&geth->irq_lock);
 spin_lock_init(&geth->freeq_lock);


 platform_set_drvdata(pdev, geth);


 return devm_of_platform_populate(dev);
}
