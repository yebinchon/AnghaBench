
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_sdio_rx_data {scalar_t__ alloc_len; int * skb; int trailer_only; int last_in_bundle; scalar_t__ part_of_bundle; } ;
struct ath10k_sdio {int n_rx_pkts; struct ath10k_sdio_rx_data* rx_pkts; int ar; } ;
struct ath10k_htc_hdr {int eid; } ;
struct TYPE_2__ {int (* ep_rx_complete ) (int ,int *) ;} ;
struct ath10k_htc_ep {scalar_t__ service_id; TYPE_1__ ep_ops; } ;
struct ath10k_htc {struct ath10k_htc_ep* endpoint; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;


 int ATH10K_HTC_EP_COUNT ;
 int ENOMEM ;
 int ath10k_sdio_mbox_free_rx_pkt (struct ath10k_sdio_rx_data*) ;
 int ath10k_sdio_mbox_rx_process_packet (struct ath10k*,struct ath10k_sdio_rx_data*,int *,int*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int kfree_skb (int *) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int ath10k_sdio_mbox_rx_process_packets(struct ath10k *ar,
            u32 lookaheads[],
            int *n_lookahead)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_htc *htc = &ar->htc;
 struct ath10k_sdio_rx_data *pkt;
 struct ath10k_htc_ep *ep;
 enum ath10k_htc_ep_id id;
 int ret, i, *n_lookahead_local;
 u32 *lookaheads_local;
 int lookahead_idx = 0;

 for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
  lookaheads_local = lookaheads;
  n_lookahead_local = n_lookahead;

  id = ((struct ath10k_htc_hdr *)
        &lookaheads[lookahead_idx++])->eid;

  if (id >= ATH10K_HTC_EP_COUNT) {
   ath10k_warn(ar, "invalid endpoint in look-ahead: %d\n",
        id);
   ret = -ENOMEM;
   goto out;
  }

  ep = &htc->endpoint[id];

  if (ep->service_id == 0) {
   ath10k_warn(ar, "ep %d is not connected\n", id);
   ret = -ENOMEM;
   goto out;
  }

  pkt = &ar_sdio->rx_pkts[i];

  if (pkt->part_of_bundle && !pkt->last_in_bundle) {



   lookahead_idx--;
   lookaheads_local = ((void*)0);
   n_lookahead_local = ((void*)0);
  }

  ret = ath10k_sdio_mbox_rx_process_packet(ar,
        pkt,
        lookaheads_local,
        n_lookahead_local);
  if (ret)
   goto out;

  if (!pkt->trailer_only)
   ep->ep_ops.ep_rx_complete(ar_sdio->ar, pkt->skb);
  else
   kfree_skb(pkt->skb);


  pkt->skb = ((void*)0);
  pkt->alloc_len = 0;
 }

 ret = 0;

out:



 for (; i < ar_sdio->n_rx_pkts; i++)
  ath10k_sdio_mbox_free_rx_pkt(&ar_sdio->rx_pkts[i]);

 return ret;
}
