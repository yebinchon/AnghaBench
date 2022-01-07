
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ti_emif_sram_config; int ti_emif_base_addr_phys; int ti_emif_base_addr_virt; } ;
struct ti_emif_data {TYPE_1__ pm_data; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct ti_emif_data* devm_kzalloc (struct device*,int,int ) ;
 struct ti_emif_data* emif_instance ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int ti_emif_alloc_sram (struct device*,struct ti_emif_data*) ;
 int ti_emif_configure_sr_delay (struct ti_emif_data*) ;
 int ti_emif_free_sram (struct ti_emif_data*) ;
 int ti_emif_of_match ;
 int ti_emif_push_sram (struct device*,struct ti_emif_data*) ;

__attribute__((used)) static int ti_emif_probe(struct platform_device *pdev)
{
 int ret;
 struct resource *res;
 struct device *dev = &pdev->dev;
 const struct of_device_id *match;
 struct ti_emif_data *emif_data;

 emif_data = devm_kzalloc(dev, sizeof(*emif_data), GFP_KERNEL);
 if (!emif_data)
  return -ENOMEM;

 match = of_match_device(ti_emif_of_match, &pdev->dev);
 if (!match)
  return -ENODEV;

 emif_data->pm_data.ti_emif_sram_config = (unsigned long)match->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 emif_data->pm_data.ti_emif_base_addr_virt = devm_ioremap_resource(dev,
           res);
 if (IS_ERR(emif_data->pm_data.ti_emif_base_addr_virt)) {
  ret = PTR_ERR(emif_data->pm_data.ti_emif_base_addr_virt);
  return ret;
 }

 emif_data->pm_data.ti_emif_base_addr_phys = res->start;

 ti_emif_configure_sr_delay(emif_data);

 ret = ti_emif_alloc_sram(dev, emif_data);
 if (ret)
  return ret;

 ret = ti_emif_push_sram(dev, emif_data);
 if (ret)
  goto fail_free_sram;

 emif_instance = emif_data;

 return 0;

fail_free_sram:
 ti_emif_free_sram(emif_data);

 return ret;
}
