
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_snoc {struct ath10k_clk_info* clk; } ;
struct ath10k_clk_info {int handle; int name; } ;
struct ath10k {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ATH10K_DBG_SNOC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int clk_cfg ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static int ath10k_snoc_clk_deinit(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_clk_info *clk_info;
 int i;

 for (i = 0; i < ARRAY_SIZE(clk_cfg); i++) {
  clk_info = &ar_snoc->clk[i];

  if (!clk_info->handle)
   continue;

  ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc clock %s being disabled\n",
      clk_info->name);

  clk_disable_unprepare(clk_info->handle);
 }

 return 0;
}
