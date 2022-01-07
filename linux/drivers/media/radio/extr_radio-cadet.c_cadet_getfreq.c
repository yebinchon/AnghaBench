
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {int is_fm_band; } ;


 unsigned int cadet_gettune (struct cadet*) ;

__attribute__((used)) static unsigned cadet_getfreq(struct cadet *dev)
{
 int i;
 unsigned freq = 0, test, fifo = 0;




 fifo = cadet_gettune(dev);




 if (!dev->is_fm_band)
  return ((fifo & 0x7fff) - 450) * 16;

 test = 12500;
 for (i = 0; i < 14; i++) {
  if ((fifo & 0x01) != 0)
   freq += test;
  test = test << 1;
  fifo = fifo >> 1;
 }
 freq -= 10700000;
 freq = (freq * 16) / 1000;
 return freq;
}
