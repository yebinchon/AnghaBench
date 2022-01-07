
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u32 ;
struct vf610_nfc {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 vf610_nfc_read(struct vf610_nfc *nfc, uint reg)
{
 return readl(nfc->regs + reg);
}
