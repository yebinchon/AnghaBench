
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alcor_pci_priv {int dummy; } ;


 int AU6601_REG_INT_ENABLE ;
 int alcor_write32 (struct alcor_pci_priv*,int ,int ) ;

__attribute__((used)) static inline void alcor_mask_sd_irqs(struct alcor_pci_priv *priv)
{
 alcor_write32(priv, 0, AU6601_REG_INT_ENABLE);
}
