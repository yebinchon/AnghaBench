
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ite_dev {scalar_t__ cir_addr; } ;


 scalar_t__ IT8709_RAM_IDX ;
 scalar_t__ IT8709_RAM_VAL ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void it8709_wm(struct ite_dev *dev, u8 val, int index)
{
 outb(index, dev->cir_addr + IT8709_RAM_IDX);
 outb(val, dev->cir_addr + IT8709_RAM_VAL);
}
