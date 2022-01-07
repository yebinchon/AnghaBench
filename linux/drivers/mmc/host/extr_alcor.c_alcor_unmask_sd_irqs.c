
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alcor_sdmmc_host {struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_INT_CARD_INSERT ;
 int AU6601_INT_CARD_REMOVE ;
 int AU6601_INT_CMD_MASK ;
 int AU6601_INT_DATA_MASK ;
 int AU6601_INT_OVER_CURRENT_ERR ;
 int AU6601_REG_INT_ENABLE ;
 int alcor_write32 (struct alcor_pci_priv*,int,int ) ;

__attribute__((used)) static inline void alcor_unmask_sd_irqs(struct alcor_sdmmc_host *host)
{
 struct alcor_pci_priv *priv = host->alcor_pci;

 alcor_write32(priv, AU6601_INT_CMD_MASK | AU6601_INT_DATA_MASK |
    AU6601_INT_CARD_INSERT | AU6601_INT_CARD_REMOVE |
    AU6601_INT_OVER_CURRENT_ERR,
    AU6601_REG_INT_ENABLE);
}
