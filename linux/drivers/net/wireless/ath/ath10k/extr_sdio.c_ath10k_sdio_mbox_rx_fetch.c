
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_sdio {int n_rx_pkts; int * rx_pkts; } ;
struct ath10k {int dummy; } ;


 int ath10k_sdio_mbox_free_rx_pkt (int *) ;
 int ath10k_sdio_mbox_rx_packet (struct ath10k*,int *) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;

__attribute__((used)) static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 int ret, i;

 for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
  ret = ath10k_sdio_mbox_rx_packet(ar,
       &ar_sdio->rx_pkts[i]);
  if (ret)
   goto err;
 }

 return 0;

err:

 for (; i < ar_sdio->n_rx_pkts; i++)
  ath10k_sdio_mbox_free_rx_pkt(&ar_sdio->rx_pkts[i]);

 return ret;
}
