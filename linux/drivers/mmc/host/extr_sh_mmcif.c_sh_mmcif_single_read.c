
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int blocksize; int wait_for; int addr; } ;
struct mmc_request {int dummy; } ;


 int BLOCK_SIZE_MASK ;
 int MASK_MBUFREN ;
 int MMCIF_CE_BLOCK_SET ;
 int MMCIF_CE_INT_MASK ;
 int MMCIF_WAIT_FOR_READ ;
 int sh_mmcif_bitset (struct sh_mmcif_host*,int ,int ) ;
 int sh_mmcif_readl (int ,int ) ;

__attribute__((used)) static void sh_mmcif_single_read(struct sh_mmcif_host *host,
     struct mmc_request *mrq)
{
 host->blocksize = (sh_mmcif_readl(host->addr, MMCIF_CE_BLOCK_SET) &
      BLOCK_SIZE_MASK) + 3;

 host->wait_for = MMCIF_WAIT_FOR_READ;


 sh_mmcif_bitset(host, MMCIF_CE_INT_MASK, MASK_MBUFREN);
}
