
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_pipe {int ar; } ;


 int ath10k_ce_per_engine_service (int ,int) ;
 int ath10k_htc_rx_completion_handler ;
 int ath10k_pci_process_rx_cb (struct ath10k_ce_pipe*,int ) ;

__attribute__((used)) static void ath10k_pci_htt_htc_rx_cb(struct ath10k_ce_pipe *ce_state)
{



 ath10k_ce_per_engine_service(ce_state->ar, 4);

 ath10k_pci_process_rx_cb(ce_state, ath10k_htc_rx_completion_handler);
}
