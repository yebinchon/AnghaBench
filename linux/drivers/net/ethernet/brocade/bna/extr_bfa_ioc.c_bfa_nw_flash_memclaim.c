
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct bfa_flash {int * dbuf_kva; int dbuf_pa; } ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_FLASH_DMA_BUF_SZ ;
 int memset (int *,int ,int ) ;
 scalar_t__ roundup (int ,int ) ;

void
bfa_nw_flash_memclaim(struct bfa_flash *flash, u8 *dm_kva, u64 dm_pa)
{
 flash->dbuf_kva = dm_kva;
 flash->dbuf_pa = dm_pa;
 memset(flash->dbuf_kva, 0, BFA_FLASH_DMA_BUF_SZ);
 dm_kva += roundup(BFA_FLASH_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
 dm_pa += roundup(BFA_FLASH_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
}
