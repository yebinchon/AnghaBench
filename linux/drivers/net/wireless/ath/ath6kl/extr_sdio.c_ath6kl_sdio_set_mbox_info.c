
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_mbox_info {int gmbox_sz; int gmbox_addr; int block_size; int htc_ext_sz; int htc_ext_addr; int htc_addr; } ;
struct ath6kl {struct ath6kl_mbox_info mbox_info; } ;


 int HIF_GMBOX_BASE_ADDR ;
 int HIF_GMBOX_WIDTH ;
 int HIF_MBOX0_EXT_BASE_ADDR ;
 int HIF_MBOX0_EXT_WIDTH ;
 int HIF_MBOX_BASE_ADDR ;
 int HIF_MBOX_BLOCK_SIZE ;

__attribute__((used)) static void ath6kl_sdio_set_mbox_info(struct ath6kl *ar)
{
 struct ath6kl_mbox_info *mbox_info = &ar->mbox_info;


 mbox_info->htc_addr = HIF_MBOX_BASE_ADDR;
 mbox_info->htc_ext_addr = HIF_MBOX0_EXT_BASE_ADDR;
 mbox_info->htc_ext_sz = HIF_MBOX0_EXT_WIDTH;
 mbox_info->block_size = HIF_MBOX_BLOCK_SIZE;
 mbox_info->gmbox_addr = HIF_GMBOX_BASE_ADDR;
 mbox_info->gmbox_sz = HIF_GMBOX_WIDTH;
}
