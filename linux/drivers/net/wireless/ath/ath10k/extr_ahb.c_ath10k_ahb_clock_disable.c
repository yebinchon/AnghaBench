
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ahb {int rtc_clk; int ref_clk; int cmd_clk; } ;
struct ath10k {int dummy; } ;


 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ath10k_ahb_clock_disable(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);

 clk_disable_unprepare(ar_ahb->cmd_clk);

 clk_disable_unprepare(ar_ahb->ref_clk);

 clk_disable_unprepare(ar_ahb->rtc_clk);
}
