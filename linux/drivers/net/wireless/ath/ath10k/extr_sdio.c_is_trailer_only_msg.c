
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ath10k_sdio_rx_data {TYPE_1__* skb; } ;
struct ath10k_htc_hdr {scalar_t__ trailer_len; int len; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 scalar_t__ __le16_to_cpu (int ) ;

__attribute__((used)) static inline bool is_trailer_only_msg(struct ath10k_sdio_rx_data *pkt)
{
 bool trailer_only = 0;
 struct ath10k_htc_hdr *htc_hdr =
  (struct ath10k_htc_hdr *)pkt->skb->data;
 u16 len = __le16_to_cpu(htc_hdr->len);

 if (len == htc_hdr->trailer_len)
  trailer_only = 1;

 return trailer_only;
}
