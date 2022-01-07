
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ConfigA ;
 scalar_t__ ConfigD ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int rqNeedEnMMIO ;
 int rqRhineI ;

__attribute__((used)) static void enable_mmio(long pioaddr, u32 quirks)
{
 int n;

 if (quirks & rqNeedEnMMIO) {
  if (quirks & rqRhineI) {

   n = inb(pioaddr + ConfigA) | 0x20;
   outb(n, pioaddr + ConfigA);
  } else {
   n = inb(pioaddr + ConfigD) | 0x80;
   outb(n, pioaddr + ConfigD);
  }
 }
}
