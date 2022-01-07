
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_sdio {int n_rx_pkts; } ;
struct ath10k {int dummy; } ;


 int ATH10K_SDIO_MAX_RX_MSGS ;
 int ECANCELED ;
 unsigned long SDIO_MBOX_PROCESSING_TIMEOUT_HZ ;
 int ath10k_sdio_mbox_rx_alloc (struct ath10k*,int *,int) ;
 int ath10k_sdio_mbox_rx_fetch (struct ath10k*) ;
 int ath10k_sdio_mbox_rx_process_packets (struct ath10k*,int *,int*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ath10k_sdio_mbox_rxmsg_pending_handler(struct ath10k *ar,
        u32 msg_lookahead, bool *done)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 u32 lookaheads[ATH10K_SDIO_MAX_RX_MSGS];
 int n_lookaheads = 1;
 unsigned long timeout;
 int ret;

 *done = 1;




 lookaheads[0] = msg_lookahead;

 timeout = jiffies + SDIO_MBOX_PROCESSING_TIMEOUT_HZ;
 do {



  ret = ath10k_sdio_mbox_rx_alloc(ar, lookaheads,
      n_lookaheads);
  if (ret)
   break;

  if (ar_sdio->n_rx_pkts >= 2)



   *done = 0;

  ret = ath10k_sdio_mbox_rx_fetch(ar);





  n_lookaheads = 0;
  ret = ath10k_sdio_mbox_rx_process_packets(ar,
         lookaheads,
         &n_lookaheads);

  if (!n_lookaheads || ret)
   break;







  *done = 0;
 } while (time_before(jiffies, timeout));

 if (ret && (ret != -ECANCELED))
  ath10k_warn(ar, "failed to get pending recv messages: %d\n",
       ret);

 return ret;
}
