
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_nfc {scalar_t__ regs; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 nfi_readl(struct mtk_nfc *nfc, u32 reg)
{
 return readl_relaxed(nfc->regs + reg);
}
