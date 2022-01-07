
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_sge {int len; int lo_addr; int hi_addr; } ;
typedef int dma_addr_t ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

void hinic_set_sge(struct hinic_sge *sge, dma_addr_t addr, int len)
{
 sge->hi_addr = upper_32_bits(addr);
 sge->lo_addr = lower_32_bits(addr);
 sge->len = len;
}
