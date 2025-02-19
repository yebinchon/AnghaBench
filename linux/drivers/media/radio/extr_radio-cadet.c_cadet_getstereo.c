
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {scalar_t__ io; int is_fm_band; } ;


 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int cadet_getstereo(struct cadet *dev)
{
 int ret = V4L2_TUNER_SUB_MONO;

 if (!dev->is_fm_band)
  return V4L2_TUNER_SUB_MONO;

 outb(7, dev->io);
 if ((inb(dev->io + 1) & 0x40) == 0)
  ret = V4L2_TUNER_SUB_STEREO;
 return ret;
}
