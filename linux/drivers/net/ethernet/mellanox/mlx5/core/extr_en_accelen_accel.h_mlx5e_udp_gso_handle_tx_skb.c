
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int gso_size; } ;
struct TYPE_3__ {int len; } ;


 int htons (int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline void
mlx5e_udp_gso_handle_tx_skb(struct sk_buff *skb)
{
 int payload_len = skb_shinfo(skb)->gso_size + sizeof(struct udphdr);

 udp_hdr(skb)->len = htons(payload_len);
}
