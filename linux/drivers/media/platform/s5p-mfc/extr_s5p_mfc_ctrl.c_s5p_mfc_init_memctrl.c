
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int * dma_base; } ;


 size_t BANK_L_CTX ;
 size_t BANK_R_CTX ;
 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_MC_DRAMBASE_ADR_A ;
 int S5P_FIMV_MC_DRAMBASE_ADR_B ;
 int S5P_FIMV_RISC_BASE_ADDRESS_V6 ;
 int mfc_debug (int,char*,int *,...) ;
 int mfc_write (struct s5p_mfc_dev*,int ,int ) ;

__attribute__((used)) static inline void s5p_mfc_init_memctrl(struct s5p_mfc_dev *dev)
{
 if (IS_MFCV6_PLUS(dev)) {
  mfc_write(dev, dev->dma_base[BANK_L_CTX],
     S5P_FIMV_RISC_BASE_ADDRESS_V6);
  mfc_debug(2, "Base Address : %pad\n",
     &dev->dma_base[BANK_L_CTX]);
 } else {
  mfc_write(dev, dev->dma_base[BANK_L_CTX],
     S5P_FIMV_MC_DRAMBASE_ADR_A);
  mfc_write(dev, dev->dma_base[BANK_R_CTX],
     S5P_FIMV_MC_DRAMBASE_ADR_B);
  mfc_debug(2, "Bank1: %pad, Bank2: %pad\n",
     &dev->dma_base[BANK_L_CTX],
     &dev->dma_base[BANK_R_CTX]);
 }
}
