
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mtk_nfc {scalar_t__ regs; } ;


 int readw_relaxed (scalar_t__) ;

__attribute__((used)) static inline u16 nfi_readw(struct mtk_nfc *nfc, u32 reg)
{
 return readw_relaxed(nfc->regs + reg);
}
