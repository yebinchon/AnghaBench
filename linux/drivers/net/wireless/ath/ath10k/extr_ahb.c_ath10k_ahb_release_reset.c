
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int cpu_init_rst; int radio_srif_rst; int radio_warm_rst; int radio_cold_rst; } ;
struct ath10k {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int ath10k_ahb_release_reset(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);
 int ret;

 if (IS_ERR_OR_NULL(ar_ahb->radio_cold_rst) ||
     IS_ERR_OR_NULL(ar_ahb->radio_warm_rst) ||
     IS_ERR_OR_NULL(ar_ahb->radio_srif_rst) ||
     IS_ERR_OR_NULL(ar_ahb->cpu_init_rst)) {
  ath10k_err(ar, "rst ctrl(s) is/are not initialized\n");
  return -EINVAL;
 }

 ret = reset_control_deassert(ar_ahb->radio_cold_rst);
 if (ret) {
  ath10k_err(ar, "failed to deassert radio cold rst: %d\n", ret);
  return ret;
 }

 ret = reset_control_deassert(ar_ahb->radio_warm_rst);
 if (ret) {
  ath10k_err(ar, "failed to deassert radio warm rst: %d\n", ret);
  return ret;
 }

 ret = reset_control_deassert(ar_ahb->radio_srif_rst);
 if (ret) {
  ath10k_err(ar, "failed to deassert radio srif rst: %d\n", ret);
  return ret;
 }

 ret = reset_control_deassert(ar_ahb->cpu_init_rst);
 if (ret) {
  ath10k_err(ar, "failed to deassert cpu init rst: %d\n", ret);
  return ret;
 }

 return 0;
}
