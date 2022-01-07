
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mtk_nfc {scalar_t__ regs; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void nfi_writew(struct mtk_nfc *nfc, u16 val, u32 reg)
{
 writew(val, nfc->regs + reg);
}
