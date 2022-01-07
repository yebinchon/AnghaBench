
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_endpoint_credit_dist {int credits; int cred_assngd; int endpoint; } ;
struct ath6kl_htc_credit_info {int cur_free_credits; } ;


 int ATH6KL_DBG_CREDIT ;
 int ath6kl_dbg (int ,char*,int ,int) ;

__attribute__((used)) static void ath6kl_credit_deposit(struct ath6kl_htc_credit_info *cred_info,
      struct htc_endpoint_credit_dist *ep_dist,
      int credits)
{
 ath6kl_dbg(ATH6KL_DBG_CREDIT, "credit deposit ep %d credits %d\n",
     ep_dist->endpoint, credits);

 ep_dist->credits += credits;
 ep_dist->cred_assngd += credits;
 cred_info->cur_free_credits -= credits;
}
