
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ATH10K_DBG_SNOC ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_snoc_clk_init (struct ath10k*) ;
 int ath10k_snoc_vreg_off (struct ath10k*) ;
 int ath10k_snoc_vreg_on (struct ath10k*) ;

__attribute__((used)) static int ath10k_hw_power_on(struct ath10k *ar)
{
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_SNOC, "soc power on\n");

 ret = ath10k_snoc_vreg_on(ar);
 if (ret)
  return ret;

 ret = ath10k_snoc_clk_init(ar);
 if (ret)
  goto vreg_off;

 return ret;

vreg_off:
 ath10k_snoc_vreg_off(ar);
 return ret;
}
