
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct marvell_nfc {scalar_t__ regs; } ;


 scalar_t__ NDSR ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static u32 marvell_nfc_clear_int(struct marvell_nfc *nfc, u32 int_mask)
{
 u32 reg;

 reg = readl_relaxed(nfc->regs + NDSR);
 writel_relaxed(int_mask, nfc->regs + NDSR);

 return reg & int_mask;
}
