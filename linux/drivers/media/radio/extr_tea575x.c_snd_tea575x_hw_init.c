
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tea575x {int mute; int val; int freq; int cannot_read_data; } ;


 int ENODEV ;
 int TEA575X_BIT_BAND_FM ;
 int TEA575X_BIT_SEARCH_5_28 ;
 int snd_tea575x_read (struct snd_tea575x*) ;
 int snd_tea575x_set_freq (struct snd_tea575x*) ;
 int snd_tea575x_write (struct snd_tea575x*,int) ;

int snd_tea575x_hw_init(struct snd_tea575x *tea)
{
 tea->mute = 1;



 if (!tea->cannot_read_data) {
  snd_tea575x_write(tea, 0x55AA);
  if (snd_tea575x_read(tea) != 0x55AA)
   return -ENODEV;
 }

 tea->val = TEA575X_BIT_BAND_FM | TEA575X_BIT_SEARCH_5_28;
 tea->freq = 90500 * 16;
 snd_tea575x_set_freq(tea);

 return 0;
}
