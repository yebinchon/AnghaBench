
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct multi_send_data {scalar_t__ count; struct hv_netvsc_packet* pkt; struct sk_buff* skb; } ;
struct hv_netvsc_packet {int dummy; } ;



__attribute__((used)) static inline void move_pkt_msd(struct hv_netvsc_packet **msd_send,
    struct sk_buff **msd_skb,
    struct multi_send_data *msdp)
{
 *msd_skb = msdp->skb;
 *msd_send = msdp->pkt;
 msdp->skb = ((void*)0);
 msdp->pkt = ((void*)0);
 msdp->count = 0;
}
