
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_tea575x {int freq; int band; int val; } ;





 int TEA575X_AMIF ;
 int TEA575X_BIT_BAND_FM ;
 int TEA575X_BIT_BAND_MASK ;
 int TEA575X_BIT_BAND_MW ;
 int TEA575X_BIT_FREQ_MASK ;
 int TEA575X_FMIF ;
 int snd_tea575x_val_to_freq (struct snd_tea575x*,int) ;
 int snd_tea575x_write (struct snd_tea575x*,int) ;

void snd_tea575x_set_freq(struct snd_tea575x *tea)
{
 u32 freq = tea->freq / 16;
 u32 band = 0;

 switch (tea->band) {
 case 129:
  band = TEA575X_BIT_BAND_FM;

  freq += TEA575X_FMIF;

  freq *= 10;
  freq /= 125;
  break;
 case 128:
  band = TEA575X_BIT_BAND_FM;

  freq -= TEA575X_FMIF;

  freq *= 10;
  freq /= 125;
  break;
 case 130:
  band = TEA575X_BIT_BAND_MW;

  freq += TEA575X_AMIF;
  break;
 }

 tea->val &= ~(TEA575X_BIT_FREQ_MASK | TEA575X_BIT_BAND_MASK);
 tea->val |= band;
 tea->val |= freq & TEA575X_BIT_FREQ_MASK;
 snd_tea575x_write(tea, tea->val);
 tea->freq = snd_tea575x_val_to_freq(tea, tea->val);
}
