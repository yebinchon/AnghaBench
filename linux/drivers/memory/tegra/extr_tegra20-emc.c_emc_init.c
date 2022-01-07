
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_emc {int dev; int clk; int pll_m; int emc_mux; int backup_clk; } ;


 int clk_set_parent (int ,int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int emc_init(struct tegra_emc *emc, unsigned long rate)
{
 int err;

 err = clk_set_parent(emc->emc_mux, emc->backup_clk);
 if (err) {
  dev_err(emc->dev,
   "failed to reparent to backup source: %d\n", err);
  return err;
 }

 err = clk_set_rate(emc->pll_m, rate);
 if (err) {
  dev_err(emc->dev,
   "failed to change pll_m rate: %d\n", err);
  return err;
 }

 err = clk_set_parent(emc->emc_mux, emc->pll_m);
 if (err) {
  dev_err(emc->dev,
   "failed to reparent to pll_m: %d\n", err);
  return err;
 }

 err = clk_set_rate(emc->clk, rate);
 if (err) {
  dev_err(emc->dev,
   "failed to change emc rate: %d\n", err);
  return err;
 }

 return 0;
}
