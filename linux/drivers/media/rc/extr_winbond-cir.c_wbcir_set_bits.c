
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned long) ;
 int outb (int,unsigned long) ;

__attribute__((used)) static void
wbcir_set_bits(unsigned long addr, u8 bits, u8 mask)
{
 u8 val;

 val = inb(addr);
 val = ((val & ~mask) | (bits & mask));
 outb(val, addr);
}
