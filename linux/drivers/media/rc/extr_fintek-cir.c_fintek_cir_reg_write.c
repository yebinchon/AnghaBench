
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fintek_dev {scalar_t__ cir_addr; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void fintek_cir_reg_write(struct fintek_dev *fintek, u8 val, u8 offset)
{
 outb(val, fintek->cir_addr + offset);
}
