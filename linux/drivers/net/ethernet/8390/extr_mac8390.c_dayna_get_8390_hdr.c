
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e8390_pkt_hdr {int count; } ;


 int WD_START_PG ;
 int dayna_memcpy_fromcard (struct net_device*,struct e8390_pkt_hdr*,unsigned long,int) ;

__attribute__((used)) static void dayna_get_8390_hdr(struct net_device *dev,
          struct e8390_pkt_hdr *hdr, int ring_page)
{
 unsigned long hdr_start = (ring_page - WD_START_PG)<<8;

 dayna_memcpy_fromcard(dev, hdr, hdr_start, 4);

 hdr->count = (hdr->count & 0xFF) << 8 | (hdr->count >> 8);
}
