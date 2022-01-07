
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {int tunestat; scalar_t__ io; } ;


 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static unsigned cadet_gettune(struct cadet *dev)
{
 int curvol, i;
 unsigned fifo = 0;





 outb(7, dev->io);
 curvol = inb(dev->io + 1);
 outb(0x00, dev->io + 1);
 dev->tunestat = 0xffff;




 for (i = 0; i < 25; i++) {
  fifo = (fifo << 1) | ((inb(dev->io + 1) >> 7) & 0x01);
  if (i < 24) {
   outb(0x01, dev->io + 1);
   dev->tunestat &= inb(dev->io + 1);
   outb(0x00, dev->io + 1);
  }
 }




 outb(curvol, dev->io + 1);
 return fifo;
}
