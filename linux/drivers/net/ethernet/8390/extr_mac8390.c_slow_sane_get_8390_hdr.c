
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;
struct e8390_pkt_hdr {int count; } ;


 int WD_START_PG ;
 int word_memcpy_fromcard (struct e8390_pkt_hdr*,scalar_t__,int) ;

__attribute__((used)) static void slow_sane_get_8390_hdr(struct net_device *dev,
       struct e8390_pkt_hdr *hdr,
       int ring_page)
{
 unsigned long hdr_start = (ring_page - WD_START_PG)<<8;
 word_memcpy_fromcard(hdr, dev->mem_start + hdr_start, 4);

 hdr->count = (hdr->count&0xFF)<<8|(hdr->count>>8);
}
