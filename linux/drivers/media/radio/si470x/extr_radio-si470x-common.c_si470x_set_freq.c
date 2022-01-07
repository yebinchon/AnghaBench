
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si470x_device {size_t band; } ;
struct TYPE_2__ {unsigned int rangelow; int rangehigh; } ;


 TYPE_1__* bands ;
 unsigned int clamp (unsigned int,unsigned int,int ) ;
 unsigned int si470x_get_step (struct si470x_device*) ;
 int si470x_set_chan (struct si470x_device*,unsigned short) ;

int si470x_set_freq(struct si470x_device *radio, unsigned int freq)
{
 unsigned short chan;

 freq = clamp(freq, bands[radio->band].rangelow,
      bands[radio->band].rangehigh);

 chan = (freq - bands[radio->band].rangelow) / si470x_get_step(radio);

 return si470x_set_chan(radio, chan);
}
