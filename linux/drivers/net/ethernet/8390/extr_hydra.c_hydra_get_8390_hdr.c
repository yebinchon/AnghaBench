
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct e8390_pkt_hdr {int dummy; } ;


 int HYDRA_NIC_BASE ;
 int NESM_START_PG ;
 short WORDSWAP (short) ;
 void* z_readw (unsigned long) ;

__attribute__((used)) static void hydra_get_8390_hdr(struct net_device *dev,
          struct e8390_pkt_hdr *hdr, int ring_page)
{
    int nic_base = dev->base_addr;
    short *ptrs;
    unsigned long hdr_start= (nic_base-HYDRA_NIC_BASE) +
        ((ring_page - NESM_START_PG)<<8);
    ptrs = (short *)hdr;

    *(ptrs++) = z_readw(hdr_start);
    *((short *)hdr) = WORDSWAP(*((short *)hdr));
    hdr_start += 2;
    *(ptrs++) = z_readw(hdr_start);
    *((short *)hdr+1) = WORDSWAP(*((short *)hdr+1));
}
