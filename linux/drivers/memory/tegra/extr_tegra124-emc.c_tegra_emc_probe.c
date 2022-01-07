
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tegra_emc {scalar_t__ num_timings; int mc; int regs; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int CONFIG_DEBUG_FS ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct tegra_emc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int emc_debugfs_init (TYPE_1__*,struct tegra_emc*) ;
 int emc_init (struct tegra_emc*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_emc*) ;
 struct device_node* tegra_emc_find_node_by_ram_code (int ,int) ;
 int tegra_emc_load_timings_from_dt (struct tegra_emc*,struct device_node*) ;
 int tegra_read_ram_code () ;

__attribute__((used)) static int tegra_emc_probe(struct platform_device *pdev)
{
 struct platform_device *mc;
 struct device_node *np;
 struct tegra_emc *emc;
 struct resource *res;
 u32 ram_code;
 int err;

 emc = devm_kzalloc(&pdev->dev, sizeof(*emc), GFP_KERNEL);
 if (!emc)
  return -ENOMEM;

 emc->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 emc->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(emc->regs))
  return PTR_ERR(emc->regs);

 np = of_parse_phandle(pdev->dev.of_node, "nvidia,memory-controller", 0);
 if (!np) {
  dev_err(&pdev->dev, "could not get memory controller\n");
  return -ENOENT;
 }

 mc = of_find_device_by_node(np);
 of_node_put(np);
 if (!mc)
  return -ENOENT;

 emc->mc = platform_get_drvdata(mc);
 if (!emc->mc)
  return -EPROBE_DEFER;

 ram_code = tegra_read_ram_code();

 np = tegra_emc_find_node_by_ram_code(pdev->dev.of_node, ram_code);
 if (!np) {
  dev_err(&pdev->dev,
   "no memory timings for RAM code %u found in DT\n",
   ram_code);
  return -ENOENT;
 }

 err = tegra_emc_load_timings_from_dt(emc, np);
 of_node_put(np);
 if (err)
  return err;

 if (emc->num_timings == 0) {
  dev_err(&pdev->dev,
   "no memory timings for RAM code %u registered\n",
   ram_code);
  return -ENOENT;
 }

 err = emc_init(emc);
 if (err) {
  dev_err(&pdev->dev, "EMC initialization failed: %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, emc);

 if (IS_ENABLED(CONFIG_DEBUG_FS))
  emc_debugfs_init(&pdev->dev, emc);

 return 0;
}
