
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned long base_addr; } ;


 unsigned long HYDRA_NIC_BASE ;
 int NESM_START_PG ;
 int z_memcpy_toio (unsigned long,unsigned char const*,int) ;

__attribute__((used)) static void hydra_block_output(struct net_device *dev, int count,
          const unsigned char *buf, int start_page)
{
    unsigned long nic_base = dev->base_addr;
    unsigned long mem_base = nic_base - HYDRA_NIC_BASE;

    if (count&1)
 count++;

    z_memcpy_toio(mem_base+((start_page - NESM_START_PG)<<8), buf, count);
}
