
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int cmd_clk; int ref_clk; int rtc_clk; } ;
struct ath10k {int dummy; } ;


 int EIO ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int ath10k_ahb_clock_enable(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);
 int ret;

 if (IS_ERR_OR_NULL(ar_ahb->cmd_clk) ||
     IS_ERR_OR_NULL(ar_ahb->ref_clk) ||
     IS_ERR_OR_NULL(ar_ahb->rtc_clk)) {
  ath10k_err(ar, "clock(s) is/are not initialized\n");
  ret = -EIO;
  goto out;
 }

 ret = clk_prepare_enable(ar_ahb->cmd_clk);
 if (ret) {
  ath10k_err(ar, "failed to enable cmd clk: %d\n", ret);
  goto out;
 }

 ret = clk_prepare_enable(ar_ahb->ref_clk);
 if (ret) {
  ath10k_err(ar, "failed to enable ref clk: %d\n", ret);
  goto err_cmd_clk_disable;
 }

 ret = clk_prepare_enable(ar_ahb->rtc_clk);
 if (ret) {
  ath10k_err(ar, "failed to enable rtc clk: %d\n", ret);
  goto err_ref_clk_disable;
 }

 return 0;

err_ref_clk_disable:
 clk_disable_unprepare(ar_ahb->ref_clk);

err_cmd_clk_disable:
 clk_disable_unprepare(ar_ahb->cmd_clk);

out:
 return ret;
}
