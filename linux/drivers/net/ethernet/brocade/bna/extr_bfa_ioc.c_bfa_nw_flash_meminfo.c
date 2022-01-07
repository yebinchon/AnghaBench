
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_FLASH_DMA_BUF_SZ ;
 int roundup (int ,int ) ;

u32
bfa_nw_flash_meminfo(void)
{
 return roundup(BFA_FLASH_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
}
