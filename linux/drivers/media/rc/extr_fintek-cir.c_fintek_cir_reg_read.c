
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fintek_dev {scalar_t__ cir_addr; } ;


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static u8 fintek_cir_reg_read(struct fintek_dev *fintek, u8 offset)
{
 return inb(fintek->cir_addr + offset);
}
