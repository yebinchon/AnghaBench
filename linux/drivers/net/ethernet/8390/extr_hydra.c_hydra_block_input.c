
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct net_device {unsigned long base_addr; } ;


 unsigned long HYDRA_NIC_BASE ;
 int NESM_START_PG ;
 int NESM_STOP_PG ;
 int z_memcpy_fromio (scalar_t__,unsigned long,int) ;

__attribute__((used)) static void hydra_block_input(struct net_device *dev, int count,
         struct sk_buff *skb, int ring_offset)
{
    unsigned long nic_base = dev->base_addr;
    unsigned long mem_base = nic_base - HYDRA_NIC_BASE;
    unsigned long xfer_start = mem_base + ring_offset - (NESM_START_PG<<8);

    if (count&1)
 count++;

    if (xfer_start+count > mem_base + (NESM_STOP_PG<<8)) {
 int semi_count = (mem_base + (NESM_STOP_PG<<8)) - xfer_start;

 z_memcpy_fromio(skb->data,xfer_start,semi_count);
 count -= semi_count;
 z_memcpy_fromio(skb->data+semi_count, mem_base, count);
    } else
 z_memcpy_fromio(skb->data, xfer_start,count);

}
