
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct tcphdr {int seq; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {scalar_t__ payload_len; } ;
struct iphdr {int version; int id; scalar_t__ check; scalar_t__ tot_len; } ;
struct efx_tx_queue {int tso_version; int insert_count; } ;
struct efx_tx_buffer {int option; scalar_t__ unmap_len; scalar_t__ len; void* flags; } ;
struct TYPE_2__ {int gso_size; } ;


 int EFX_POPULATE_QWORD_4 (int ,int ,int,int ,int ,int ,int ,int ,int) ;
 int EFX_POPULATE_QWORD_5 (int ,int ,int,int ,int ,int ,int ,int ,scalar_t__,int ,int) ;
 void* EFX_TX_BUF_OPTION ;
 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int EINVAL ;
 int ESE_DZ_TX_OPTION_DESC_TSO ;
 int ESE_DZ_TX_TSO_OPTION_DESC_FATSO2A ;
 int ESE_DZ_TX_TSO_OPTION_DESC_FATSO2B ;
 int ESF_DZ_TX_DESC_IS_OPT ;
 int ESF_DZ_TX_OPTION_TYPE ;
 int ESF_DZ_TX_TSO_IP_ID ;
 int ESF_DZ_TX_TSO_OPTION_TYPE ;
 int ESF_DZ_TX_TSO_TCP_MSS ;
 int ESF_DZ_TX_TSO_TCP_SEQNO ;
 int WARN_ONCE (int,char*,int) ;
 struct efx_tx_buffer* efx_tx_queue_get_insert_buffer (struct efx_tx_queue*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int efx_ef10_tx_tso_desc(struct efx_tx_queue *tx_queue,
    struct sk_buff *skb,
    bool *data_mapped)
{
 struct efx_tx_buffer *buffer;
 struct tcphdr *tcp;
 struct iphdr *ip;

 u16 ipv4_id;
 u32 seqnum;
 u32 mss;

 EFX_WARN_ON_ONCE_PARANOID(tx_queue->tso_version != 2);

 mss = skb_shinfo(skb)->gso_size;

 if (unlikely(mss < 4)) {
  WARN_ONCE(1, "MSS of %u is too small for TSO v2\n", mss);
  return -EINVAL;
 }

 ip = ip_hdr(skb);
 if (ip->version == 4) {

  ip->tot_len = 0;
  ip->check = 0;
  ipv4_id = ntohs(ip->id);
 } else {

  struct ipv6hdr *ipv6 = ipv6_hdr(skb);

  ipv6->payload_len = 0;
  ipv4_id = 0;
 }

 tcp = tcp_hdr(skb);
 seqnum = ntohl(tcp->seq);

 buffer = efx_tx_queue_get_insert_buffer(tx_queue);

 buffer->flags = EFX_TX_BUF_OPTION;
 buffer->len = 0;
 buffer->unmap_len = 0;
 EFX_POPULATE_QWORD_5(buffer->option,
   ESF_DZ_TX_DESC_IS_OPT, 1,
   ESF_DZ_TX_OPTION_TYPE, ESE_DZ_TX_OPTION_DESC_TSO,
   ESF_DZ_TX_TSO_OPTION_TYPE,
   ESE_DZ_TX_TSO_OPTION_DESC_FATSO2A,
   ESF_DZ_TX_TSO_IP_ID, ipv4_id,
   ESF_DZ_TX_TSO_TCP_SEQNO, seqnum
   );
 ++tx_queue->insert_count;

 buffer = efx_tx_queue_get_insert_buffer(tx_queue);

 buffer->flags = EFX_TX_BUF_OPTION;
 buffer->len = 0;
 buffer->unmap_len = 0;
 EFX_POPULATE_QWORD_4(buffer->option,
   ESF_DZ_TX_DESC_IS_OPT, 1,
   ESF_DZ_TX_OPTION_TYPE, ESE_DZ_TX_OPTION_DESC_TSO,
   ESF_DZ_TX_TSO_OPTION_TYPE,
   ESE_DZ_TX_TSO_OPTION_DESC_FATSO2B,
   ESF_DZ_TX_TSO_TCP_MSS, mss
   );
 ++tx_queue->insert_count;

 return 0;
}
