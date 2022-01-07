
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ep_tx_credits ) (struct ath10k*) ;} ;
struct ath10k_htc_ep {TYPE_1__ ep_ops; int tx_credits; } ;
struct ath10k_htc_credit_report {size_t eid; scalar_t__ credits; } ;
struct ath10k_htc {int tx_lock; struct ath10k* ar; struct ath10k_htc_ep* endpoint; } ;
struct ath10k {int dummy; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_DBG_HTC ;
 size_t ATH10K_HTC_EP_COUNT ;
 int ath10k_dbg (struct ath10k*,int ,char*,size_t,scalar_t__,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath10k*) ;

__attribute__((used)) static void
ath10k_htc_process_credit_report(struct ath10k_htc *htc,
     const struct ath10k_htc_credit_report *report,
     int len,
     enum ath10k_htc_ep_id eid)
{
 struct ath10k *ar = htc->ar;
 struct ath10k_htc_ep *ep;
 int i, n_reports;

 if (len % sizeof(*report))
  ath10k_warn(ar, "Uneven credit report len %d", len);

 n_reports = len / sizeof(*report);

 spin_lock_bh(&htc->tx_lock);
 for (i = 0; i < n_reports; i++, report++) {
  if (report->eid >= ATH10K_HTC_EP_COUNT)
   break;

  ep = &htc->endpoint[report->eid];
  ep->tx_credits += report->credits;

  ath10k_dbg(ar, ATH10K_DBG_HTC, "htc ep %d got %d credits (total %d)\n",
      report->eid, report->credits, ep->tx_credits);

  if (ep->ep_ops.ep_tx_credits) {
   spin_unlock_bh(&htc->tx_lock);
   ep->ep_ops.ep_tx_credits(htc->ar);
   spin_lock_bh(&htc->tx_lock);
  }
 }
 spin_unlock_bh(&htc->tx_lock);
}
