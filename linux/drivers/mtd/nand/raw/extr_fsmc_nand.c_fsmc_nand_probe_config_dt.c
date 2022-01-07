
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nand_chip {int options; } ;
struct fsmc_nand_data {int bank; int * dev_timings; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BUSWIDTH_16 ;
 int NAND_SKIP_BBTSCAN ;
 int dev_err (TYPE_1__*,char*,int) ;
 int * devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u8_array (struct device_node*,char*,int *,int) ;

__attribute__((used)) static int fsmc_nand_probe_config_dt(struct platform_device *pdev,
         struct fsmc_nand_data *host,
         struct nand_chip *nand)
{
 struct device_node *np = pdev->dev.of_node;
 u32 val;
 int ret;

 nand->options = 0;

 if (!of_property_read_u32(np, "bank-width", &val)) {
  if (val == 2) {
   nand->options |= NAND_BUSWIDTH_16;
  } else if (val != 1) {
   dev_err(&pdev->dev, "invalid bank-width %u\n", val);
   return -EINVAL;
  }
 }

 if (of_get_property(np, "nand-skip-bbtscan", ((void*)0)))
  nand->options |= NAND_SKIP_BBTSCAN;

 host->dev_timings = devm_kzalloc(&pdev->dev,
      sizeof(*host->dev_timings),
      GFP_KERNEL);
 if (!host->dev_timings)
  return -ENOMEM;

 ret = of_property_read_u8_array(np, "timings", (u8 *)host->dev_timings,
     sizeof(*host->dev_timings));
 if (ret)
  host->dev_timings = ((void*)0);


 host->bank = 0;
 if (!of_property_read_u32(np, "bank", &val)) {
  if (val > 3) {
   dev_err(&pdev->dev, "invalid bank %u\n", val);
   return -EINVAL;
  }
  host->bank = val;
 }
 return 0;
}
