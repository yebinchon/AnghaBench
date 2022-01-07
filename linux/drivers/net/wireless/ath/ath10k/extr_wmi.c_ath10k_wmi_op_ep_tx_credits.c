
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_credits_wq; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int ath10k_wmi_tx_beacons_nowait (struct ath10k*) ;
 int wake_up (int *) ;

__attribute__((used)) static void ath10k_wmi_op_ep_tx_credits(struct ath10k *ar)
{

 ath10k_wmi_tx_beacons_nowait(ar);

 wake_up(&ar->wmi.tx_credits_wq);
}
