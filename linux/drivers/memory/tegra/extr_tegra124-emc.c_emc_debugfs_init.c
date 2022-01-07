
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_emc {int dummy; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
typedef struct tegra_emc clk ;


 scalar_t__ IS_ERR (struct tegra_emc*) ;
 int PTR_ERR (struct tegra_emc*) ;
 int S_IRUGO ;
 int S_IWUSR ;
 struct tegra_emc* clk_get_sys (char*,char*) ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct tegra_emc*,int *) ;
 int dev_err (struct device*,char*,...) ;
 int emc_debug_rate_fops ;
 int emc_debug_supported_rates_fops ;

__attribute__((used)) static void emc_debugfs_init(struct device *dev, struct tegra_emc *emc)
{
 struct dentry *root, *file;
 struct clk *clk;

 root = debugfs_create_dir("emc", ((void*)0));
 if (!root) {
  dev_err(dev, "failed to create debugfs directory\n");
  return;
 }

 clk = clk_get_sys("tegra-clk-debug", "emc");
 if (IS_ERR(clk)) {
  dev_err(dev, "failed to get debug clock: %ld\n", PTR_ERR(clk));
  return;
 }

 file = debugfs_create_file("rate", S_IRUGO | S_IWUSR, root, clk,
       &emc_debug_rate_fops);
 if (!file)
  dev_err(dev, "failed to create debugfs entry\n");

 file = debugfs_create_file("supported_rates", S_IRUGO, root, emc,
       &emc_debug_supported_rates_fops);
 if (!file)
  dev_err(dev, "failed to create debugfs entry\n");
}
