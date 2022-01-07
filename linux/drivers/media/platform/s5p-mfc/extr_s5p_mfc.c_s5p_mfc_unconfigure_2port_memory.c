
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int * mem_dev; } ;


 size_t BANK_L_CTX ;
 size_t BANK_R_CTX ;
 int device_unregister (int ) ;
 int vb2_dma_contig_clear_max_seg_size (int ) ;

__attribute__((used)) static void s5p_mfc_unconfigure_2port_memory(struct s5p_mfc_dev *mfc_dev)
{
 device_unregister(mfc_dev->mem_dev[BANK_L_CTX]);
 device_unregister(mfc_dev->mem_dev[BANK_R_CTX]);
 vb2_dma_contig_clear_max_seg_size(mfc_dev->mem_dev[BANK_L_CTX]);
 vb2_dma_contig_clear_max_seg_size(mfc_dev->mem_dev[BANK_R_CTX]);
}
