
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mtk_nfc {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NFI_INTR_EN ;
 int NFI_INTR_STA ;
 int complete (int *) ;
 int nfi_readw (struct mtk_nfc*,int ) ;
 int nfi_writew (struct mtk_nfc*,int,int ) ;

__attribute__((used)) static irqreturn_t mtk_nfc_irq(int irq, void *id)
{
 struct mtk_nfc *nfc = id;
 u16 sta, ien;

 sta = nfi_readw(nfc, NFI_INTR_STA);
 ien = nfi_readw(nfc, NFI_INTR_EN);

 if (!(sta & ien))
  return IRQ_NONE;

 nfi_writew(nfc, ~sta & ien, NFI_INTR_EN);
 complete(&nfc->done);

 return IRQ_HANDLED;
}
