
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mtk_nfc {scalar_t__ regs; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void nfi_writeb(struct mtk_nfc *nfc, u8 val, u32 reg)
{
 writeb(val, nfc->regs + reg);
}
