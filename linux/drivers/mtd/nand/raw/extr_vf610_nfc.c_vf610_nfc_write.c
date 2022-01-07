
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u32 ;
struct vf610_nfc {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void vf610_nfc_write(struct vf610_nfc *nfc, uint reg, u32 val)
{
 writel(val, nfc->regs + reg);
}
