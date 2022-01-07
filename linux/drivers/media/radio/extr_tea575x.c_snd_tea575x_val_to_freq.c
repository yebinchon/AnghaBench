
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_tea575x {int band; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;





 int TEA575X_AMIF ;
 int TEA575X_BIT_FREQ_MASK ;
 int TEA575X_FMIF ;
 TYPE_1__* bands ;
 int clamp (int,int ,int ) ;

__attribute__((used)) static u32 snd_tea575x_val_to_freq(struct snd_tea575x *tea, u32 val)
{
 u32 freq = val & TEA575X_BIT_FREQ_MASK;

 if (freq == 0)
  return freq;

 switch (tea->band) {
 case 129:

  freq *= 125;
  freq /= 10;

  freq -= TEA575X_FMIF;
  break;
 case 128:

  freq *= 125;
  freq /= 10;

  freq += TEA575X_FMIF;
  break;
 case 130:

  freq -= TEA575X_AMIF;
  break;
 }

 return clamp(freq * 16, bands[tea->band].rangelow,
    bands[tea->band].rangehigh);
}
