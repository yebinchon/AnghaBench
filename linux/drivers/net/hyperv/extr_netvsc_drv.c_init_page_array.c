
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {char* data; } ;
struct hv_page_buffer {int dummy; } ;
struct hv_netvsc_packet {size_t rmsg_size; size_t rmsg_pgcnt; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 scalar_t__ fill_pg_buf (int ,int ,size_t,struct hv_page_buffer*) ;
 int offset_in_page (char*) ;
 int skb_frag_off (int *) ;
 int skb_frag_page (int *) ;
 size_t skb_frag_size (int *) ;
 size_t skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int virt_to_page (char*) ;

__attribute__((used)) static u32 init_page_array(void *hdr, u32 len, struct sk_buff *skb,
      struct hv_netvsc_packet *packet,
      struct hv_page_buffer *pb)
{
 u32 slots_used = 0;
 char *data = skb->data;
 int frags = skb_shinfo(skb)->nr_frags;
 int i;






 slots_used += fill_pg_buf(virt_to_page(hdr),
      offset_in_page(hdr),
      len, &pb[slots_used]);

 packet->rmsg_size = len;
 packet->rmsg_pgcnt = slots_used;

 slots_used += fill_pg_buf(virt_to_page(data),
    offset_in_page(data),
    skb_headlen(skb), &pb[slots_used]);

 for (i = 0; i < frags; i++) {
  skb_frag_t *frag = skb_shinfo(skb)->frags + i;

  slots_used += fill_pg_buf(skb_frag_page(frag),
     skb_frag_off(frag),
     skb_frag_size(frag), &pb[slots_used]);
 }
 return slots_used;
}
