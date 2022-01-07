
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_nfc {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nfi_writel(struct mtk_nfc *nfc, u32 val, u32 reg)
{
 writel(val, nfc->regs + reg);
}
