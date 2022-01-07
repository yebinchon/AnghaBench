
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int cr_efdr; int cr_efir; } ;


 int outb (int ,int ) ;

__attribute__((used)) static inline void nvt_cr_write(struct nvt_dev *nvt, u8 val, u8 reg)
{
 outb(reg, nvt->cr_efir);
 outb(val, nvt->cr_efdr);
}
