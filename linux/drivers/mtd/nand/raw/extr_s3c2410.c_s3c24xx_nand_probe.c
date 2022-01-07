
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct s3c2410_platform_nand {int nr_sets; struct s3c2410_nand_set* sets; } ;
struct s3c2410_nand_set {int nr_chips; } ;
struct s3c2410_nand_mtd {int chip; } ;
struct TYPE_10__ {int * ops; } ;
struct s3c2410_nand_info {int mtd_count; struct s3c2410_nand_mtd* mtds; int regs; struct s3c2410_platform_nand* platform; TYPE_3__* device; int clk; TYPE_2__ controller; } ;
struct resource {int dummy; } ;
struct TYPE_11__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_3__ dev; struct resource* resource; } ;
struct TYPE_9__ {TYPE_3__* parent; } ;
struct mtd_info {TYPE_1__ dev; } ;


 int CLOCK_ENABLE ;
 int CLOCK_SUSPEND ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ allow_clk_suspend (struct s3c2410_nand_info*) ;
 int dev_dbg (TYPE_3__*,char*,int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_info (TYPE_3__*,char*) ;
 int devm_clk_get (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 void* devm_kzalloc (TYPE_3__*,int,int ) ;
 int nand_controller_init (TYPE_2__*) ;
 int nand_scan (int *,int) ;
 struct mtd_info* nand_to_mtd (int *) ;
 int platform_set_drvdata (struct platform_device*,struct s3c2410_nand_info*) ;
 int pr_debug (char*,int,struct s3c2410_nand_mtd*,struct s3c2410_nand_info*) ;
 int resource_size (struct resource*) ;
 int s3c2410_nand_add_partition (struct s3c2410_nand_info*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ;
 int s3c2410_nand_clk_set_state (struct s3c2410_nand_info*,int ) ;
 int s3c2410_nand_cpufreq_register (struct s3c2410_nand_info*) ;
 int s3c2410_nand_init_chip (struct s3c2410_nand_info*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ;
 int s3c2410_nand_inithw (struct s3c2410_nand_info*) ;
 int s3c24xx_nand_controller_ops ;
 int s3c24xx_nand_probe_dt (struct platform_device*) ;
 int s3c24xx_nand_probe_pdata (struct platform_device*) ;
 int s3c24xx_nand_remove (struct platform_device*) ;
 struct s3c2410_platform_nand* to_nand_plat (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_nand_probe(struct platform_device *pdev)
{
 struct s3c2410_platform_nand *plat;
 struct s3c2410_nand_info *info;
 struct s3c2410_nand_mtd *nmtd;
 struct s3c2410_nand_set *sets;
 struct resource *res;
 int err = 0;
 int size;
 int nr_sets;
 int setno;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0)) {
  err = -ENOMEM;
  goto exit_error;
 }

 platform_set_drvdata(pdev, info);

 nand_controller_init(&info->controller);
 info->controller.ops = &s3c24xx_nand_controller_ops;



 info->clk = devm_clk_get(&pdev->dev, "nand");
 if (IS_ERR(info->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  err = -ENOENT;
  goto exit_error;
 }

 s3c2410_nand_clk_set_state(info, CLOCK_ENABLE);

 if (pdev->dev.of_node)
  err = s3c24xx_nand_probe_dt(pdev);
 else
  err = s3c24xx_nand_probe_pdata(pdev);

 if (err)
  goto exit_error;

 plat = to_nand_plat(pdev);




 res = pdev->resource;
 size = resource_size(res);

 info->device = &pdev->dev;
 info->platform = plat;

 info->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(info->regs)) {
  err = PTR_ERR(info->regs);
  goto exit_error;
 }

 dev_dbg(&pdev->dev, "mapped registers at %p\n", info->regs);

 if (!plat->sets || plat->nr_sets < 1) {
  err = -EINVAL;
  goto exit_error;
 }

 sets = plat->sets;
 nr_sets = plat->nr_sets;

 info->mtd_count = nr_sets;



 size = nr_sets * sizeof(*info->mtds);
 info->mtds = devm_kzalloc(&pdev->dev, size, GFP_KERNEL);
 if (info->mtds == ((void*)0)) {
  err = -ENOMEM;
  goto exit_error;
 }



 nmtd = info->mtds;

 for (setno = 0; setno < nr_sets; setno++, nmtd++, sets++) {
  struct mtd_info *mtd = nand_to_mtd(&nmtd->chip);

  pr_debug("initialising set %d (%p, info %p)\n",
    setno, nmtd, info);

  mtd->dev.parent = &pdev->dev;
  s3c2410_nand_init_chip(info, nmtd, sets);

  err = nand_scan(&nmtd->chip, sets ? sets->nr_chips : 1);
  if (err)
   goto exit_error;

  s3c2410_nand_add_partition(info, nmtd, sets);
 }


 err = s3c2410_nand_inithw(info);
 if (err != 0)
  goto exit_error;

 err = s3c2410_nand_cpufreq_register(info);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to init cpufreq support\n");
  goto exit_error;
 }

 if (allow_clk_suspend(info)) {
  dev_info(&pdev->dev, "clock idle support enabled\n");
  s3c2410_nand_clk_set_state(info, CLOCK_SUSPEND);
 }

 return 0;

 exit_error:
 s3c24xx_nand_remove(pdev);

 if (err == 0)
  err = -EINVAL;
 return err;
}
