
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int cr_efdr; int cr_efir; } ;


 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline u8 nvt_cr_read(struct nvt_dev *nvt, u8 reg)
{
 outb(reg, nvt->cr_efir);
 return inb(nvt->cr_efdr);
}
