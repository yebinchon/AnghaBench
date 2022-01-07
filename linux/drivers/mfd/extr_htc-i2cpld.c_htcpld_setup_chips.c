
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct htcpld_data {int nchips; scalar_t__ chained_irq; TYPE_2__* chip; } ;
struct htcpld_core_platform_data {int num_chip; TYPE_1__* chip; } ;
struct htcpld_chip {int dummy; } ;
struct TYPE_4__ {int lock; int set_val_work; int nirqs; int irq_start; struct device* dev; scalar_t__ cache_in; int cache_out; int reset; } ;
struct TYPE_3__ {int addr; int num_irqs; int irq_base; int reset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int *) ;
 struct htcpld_core_platform_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int ) ;
 TYPE_2__* devm_kcalloc (struct device*,int,int,int ) ;
 int htcpld_chip_set_ni ;
 int htcpld_register_chip_gpio (struct platform_device*,int) ;
 int htcpld_register_chip_i2c (struct platform_device*,int) ;
 int htcpld_setup_chip_irq (struct platform_device*,int) ;
 int htcpld_unregister_chip_i2c (struct platform_device*,int) ;
 struct htcpld_data* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int htcpld_setup_chips(struct platform_device *pdev)
{
 struct htcpld_data *htcpld;
 struct device *dev = &pdev->dev;
 struct htcpld_core_platform_data *pdata;
 int i;


 pdata = dev_get_platdata(dev);
 htcpld = platform_get_drvdata(pdev);


 htcpld->nchips = pdata->num_chip;
 htcpld->chip = devm_kcalloc(dev,
        htcpld->nchips,
        sizeof(struct htcpld_chip),
        GFP_KERNEL);
 if (!htcpld->chip)
  return -ENOMEM;


 for (i = 0; i < htcpld->nchips; i++) {
  int ret;


  htcpld->chip[i].reset = pdata->chip[i].reset;
  htcpld->chip[i].cache_out = pdata->chip[i].reset;
  htcpld->chip[i].cache_in = 0;
  htcpld->chip[i].dev = dev;
  htcpld->chip[i].irq_start = pdata->chip[i].irq_base;
  htcpld->chip[i].nirqs = pdata->chip[i].num_irqs;

  INIT_WORK(&(htcpld->chip[i].set_val_work), &htcpld_chip_set_ni);
  spin_lock_init(&(htcpld->chip[i].lock));


  if (htcpld->chained_irq) {
   ret = htcpld_setup_chip_irq(pdev, i);
   if (ret)
    continue;
  }


  ret = htcpld_register_chip_i2c(pdev, i);
  if (ret)
   continue;



  ret = htcpld_register_chip_gpio(pdev, i);
  if (ret) {

   htcpld_unregister_chip_i2c(pdev, i);
   continue;
  }

  dev_info(dev, "Registered chip at 0x%x\n", pdata->chip[i].addr);
 }

 return 0;
}
