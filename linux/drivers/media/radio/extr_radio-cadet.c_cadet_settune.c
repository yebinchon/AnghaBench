
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {scalar_t__ io; } ;


 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void cadet_settune(struct cadet *dev, unsigned fifo)
{
 int i;
 unsigned test;

 outb(7, dev->io);



 test = 0;
 test = (fifo >> 23) & 0x02;
 test |= 0x1c;
 outb(7, dev->io);
 outb(test, dev->io + 1);
 for (i = 0; i < 25; i++) {
  test |= 0x01;
  outb(test, dev->io + 1);
  test &= 0xfe;
  outb(test, dev->io + 1);
  fifo = fifo << 1;
  test = 0x1c | ((fifo >> 23) & 0x02);
  outb(test, dev->io + 1);
 }
}
