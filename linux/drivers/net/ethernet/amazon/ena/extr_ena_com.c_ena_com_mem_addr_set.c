
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ena_common_mem_addr {scalar_t__ mem_addr_high; int mem_addr_low; } ;
struct ena_com_dev {scalar_t__ dma_addr_bits; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int GENMASK_ULL (scalar_t__,int ) ;
 int lower_32_bits (int) ;
 int pr_err (char*) ;
 scalar_t__ upper_32_bits (int) ;

__attribute__((used)) static int ena_com_mem_addr_set(struct ena_com_dev *ena_dev,
           struct ena_common_mem_addr *ena_addr,
           dma_addr_t addr)
{
 if ((addr & GENMASK_ULL(ena_dev->dma_addr_bits - 1, 0)) != addr) {
  pr_err("dma address has more bits that the device supports\n");
  return -EINVAL;
 }

 ena_addr->mem_addr_low = lower_32_bits(addr);
 ena_addr->mem_addr_high = (u16)upper_32_bits(addr);

 return 0;
}
