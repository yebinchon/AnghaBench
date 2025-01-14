
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmi_xfer {unsigned int resp_len; int rx_done; int wait_for_resp; } ;
struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ ath10k_ce_completed_recv_next (struct ath10k_ce_pipe*,void**,unsigned int*) ;
 int ath10k_warn (struct ath10k*,char*) ;

__attribute__((used)) static void ath10k_pci_bmi_recv_data(struct ath10k_ce_pipe *ce_state)
{
 struct ath10k *ar = ce_state->ar;
 struct bmi_xfer *xfer;
 unsigned int nbytes;

 if (ath10k_ce_completed_recv_next(ce_state, (void **)&xfer,
       &nbytes))
  return;

 if (WARN_ON_ONCE(!xfer))
  return;

 if (!xfer->wait_for_resp) {
  ath10k_warn(ar, "unexpected: BMI data received; ignoring\n");
  return;
 }

 xfer->resp_len = nbytes;
 xfer->rx_done = 1;
}
