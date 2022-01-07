
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cadet {size_t is_fm_band; unsigned int curfreq; int tunestat; scalar_t__ io; scalar_t__ sigstrength; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;


 TYPE_1__* bands ;
 int cadet_gettune (struct cadet*) ;
 int cadet_settune (struct cadet*,unsigned int) ;
 unsigned int clamp (unsigned int,int ,int ) ;
 int inb (scalar_t__) ;
 int msleep (int) ;
 int outb (int,scalar_t__) ;
 scalar_t__** sigtable ;

__attribute__((used)) static void cadet_setfreq(struct cadet *dev, unsigned freq)
{
 unsigned fifo;
 int i, j, test;
 int curvol;

 freq = clamp(freq, bands[dev->is_fm_band].rangelow,
      bands[dev->is_fm_band].rangehigh);
 dev->curfreq = freq;



 fifo = 0;
 if (dev->is_fm_band) {
  test = 102400;
  freq = freq / 16;
  freq += 10700;
  for (i = 0; i < 14; i++) {
   fifo = fifo << 1;
   if (freq >= test) {
    fifo |= 0x01;
    freq -= test;
   }
   test = test >> 1;
  }
 } else {
  fifo = (freq / 16) + 450;
  fifo |= 0x100000;
 }





 outb(7, dev->io);
 curvol = inb(dev->io + 1);




 for (j = 3; j > -1; j--) {
  cadet_settune(dev, fifo | (j << 16));

  outb(7, dev->io);
  outb(curvol, dev->io + 1);

  msleep(100);

  cadet_gettune(dev);
  if ((dev->tunestat & 0x40) == 0) {
   dev->sigstrength = sigtable[dev->is_fm_band][j];
   goto reset_rds;
  }
 }
 dev->sigstrength = 0;
reset_rds:
 outb(3, dev->io);
 outb(inb(dev->io + 1) & 0x7f, dev->io + 1);
}
