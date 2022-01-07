
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_nfc {int dummy; } ;


 int NFI_CNRNB ;
 int NFI_INTR_EN ;
 int NFI_INTR_STA ;
 int NFI_PAGEFMT ;
 int PAGEFMT_8K_16K ;
 int mtk_nfc_hw_reset (struct mtk_nfc*) ;
 int nfi_readl (struct mtk_nfc*,int ) ;
 int nfi_writel (struct mtk_nfc*,int ,int ) ;
 int nfi_writew (struct mtk_nfc*,int,int ) ;

__attribute__((used)) static inline void mtk_nfc_hw_init(struct mtk_nfc *nfc)
{






 nfi_writew(nfc, 0xf1, NFI_CNRNB);
 nfi_writel(nfc, PAGEFMT_8K_16K, NFI_PAGEFMT);

 mtk_nfc_hw_reset(nfc);

 nfi_readl(nfc, NFI_INTR_STA);
 nfi_writel(nfc, 0, NFI_INTR_EN);
}
