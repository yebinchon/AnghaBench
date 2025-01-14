
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {void* ip_summed; } ;
struct TYPE_7__ {int errors; } ;
struct TYPE_8__ {TYPE_3__ rx; } ;
struct aq_ring_s {TYPE_4__ stats; TYPE_2__* aq_nic; } ;
struct aq_ring_buff_s {scalar_t__ is_tcp_cso; scalar_t__ is_udp_cso; scalar_t__ is_ip_cso; int is_cso_err; } ;
struct TYPE_6__ {TYPE_1__* ndev; } ;
struct TYPE_5__ {int features; } ;


 void* CHECKSUM_NONE ;
 int NETIF_F_RXCSUM ;
 int __skb_incr_checksum_unnecessary (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void aq_rx_checksum(struct aq_ring_s *self,
      struct aq_ring_buff_s *buff,
      struct sk_buff *skb)
{
 if (!(self->aq_nic->ndev->features & NETIF_F_RXCSUM))
  return;

 if (unlikely(buff->is_cso_err)) {
  ++self->stats.rx.errors;
  skb->ip_summed = CHECKSUM_NONE;
  return;
 }
 if (buff->is_ip_cso) {
  __skb_incr_checksum_unnecessary(skb);
 } else {
  skb->ip_summed = CHECKSUM_NONE;
 }

 if (buff->is_udp_cso || buff->is_tcp_cso)
  __skb_incr_checksum_unnecessary(skb);
}
