
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;
struct b43_rxhdr_fw4 {scalar_t__ frame_len; } ;
struct b43_plcp_hdr6 {int dummy; } ;
struct b43_dmaring {scalar_t__ rx_buffersize; scalar_t__ frameoffset; } ;


 int B43_WARN_ON (int) ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static void b43_poison_rx_buffer(struct b43_dmaring *ring, struct sk_buff *skb)
{
 struct b43_rxhdr_fw4 *rxhdr;
 unsigned char *frame;



 rxhdr = (struct b43_rxhdr_fw4 *)(skb->data);
 rxhdr->frame_len = 0;

 B43_WARN_ON(ring->rx_buffersize < ring->frameoffset + sizeof(struct b43_plcp_hdr6) + 2);
 frame = skb->data + ring->frameoffset;
 memset(frame, 0xFF, sizeof(struct b43_plcp_hdr6) + 2 );
}
