
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct atmel_isi {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void isi_writel(struct atmel_isi *isi, u32 reg, u32 val)
{
 writel(val, isi->regs + reg);
}
