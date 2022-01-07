
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ath10k_sdio_rx_data {int status; scalar_t__ act_len; scalar_t__ alloc_len; struct sk_buff* skb; } ;
struct TYPE_2__ {int htc_addr; } ;
struct ath10k_sdio {TYPE_1__ mbox_info; } ;
struct ath10k_htc_hdr {int len; } ;
struct ath10k {int dummy; } ;


 int EMSGSIZE ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_readsb (struct ath10k*,int ,scalar_t__,scalar_t__) ;
 int ath10k_warn (struct ath10k*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int ath10k_sdio_mbox_rx_packet(struct ath10k *ar,
          struct ath10k_sdio_rx_data *pkt)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct sk_buff *skb = pkt->skb;
 struct ath10k_htc_hdr *htc_hdr;
 int ret;

 ret = ath10k_sdio_readsb(ar, ar_sdio->mbox_info.htc_addr,
     skb->data, pkt->alloc_len);
 if (ret)
  goto out;





 htc_hdr = (struct ath10k_htc_hdr *)skb->data;
 pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
 if (pkt->act_len > pkt->alloc_len) {
  ath10k_warn(ar, "rx packet too large (%zu > %zu)\n",
       pkt->act_len, pkt->alloc_len);
  ret = -EMSGSIZE;
  goto out;
 }

 skb_put(skb, pkt->act_len);

out:
 pkt->status = ret;

 return ret;
}
