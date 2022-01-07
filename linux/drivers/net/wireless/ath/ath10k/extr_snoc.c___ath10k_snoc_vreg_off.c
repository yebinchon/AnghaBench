
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_vreg_info {int name; int max_v; int reg; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_SNOC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_err (struct ath10k*,char*,int ) ;
 int regulator_disable (int ) ;
 int regulator_set_load (int ,int ) ;
 int regulator_set_voltage (int ,int ,int ) ;

__attribute__((used)) static int __ath10k_snoc_vreg_off(struct ath10k *ar,
      struct ath10k_vreg_info *vreg_info)
{
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc regulator %s being disabled\n",
     vreg_info->name);

 ret = regulator_disable(vreg_info->reg);
 if (ret)
  ath10k_err(ar, "failed to disable regulator %s\n",
      vreg_info->name);

 ret = regulator_set_load(vreg_info->reg, 0);
 if (ret < 0)
  ath10k_err(ar, "failed to set load %s\n", vreg_info->name);

 ret = regulator_set_voltage(vreg_info->reg, 0, vreg_info->max_v);
 if (ret)
  ath10k_err(ar, "failed to set voltage %s\n", vreg_info->name);

 return ret;
}
