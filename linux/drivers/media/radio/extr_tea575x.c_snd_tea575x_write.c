
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_tea575x {TYPE_1__* ops; int mute; } ;
struct TYPE_2__ {void (* write_val ) (struct snd_tea575x*,unsigned int) ;int (* set_pins ) (struct snd_tea575x*,int) ;int (* set_direction ) (struct snd_tea575x*,int) ;} ;


 int TEA575X_CLK ;
 unsigned int TEA575X_DATA ;
 int TEA575X_WREN ;
 void stub1 (struct snd_tea575x*,unsigned int) ;
 int stub2 (struct snd_tea575x*,int) ;
 int stub3 (struct snd_tea575x*,int) ;
 int stub4 (struct snd_tea575x*,int) ;
 int stub5 (struct snd_tea575x*,int) ;
 int stub6 (struct snd_tea575x*,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_tea575x_write(struct snd_tea575x *tea, unsigned int val)
{
 u16 l;
 u8 data;

 if (tea->ops->write_val)
  return tea->ops->write_val(tea, val);

 tea->ops->set_direction(tea, 1);
 udelay(16);

 for (l = 25; l > 0; l--) {
  data = (val >> 24) & TEA575X_DATA;
  val <<= 1;
  tea->ops->set_pins(tea, data | TEA575X_WREN);
  udelay(2);
  tea->ops->set_pins(tea, data | TEA575X_WREN | TEA575X_CLK);
  udelay(2);
  tea->ops->set_pins(tea, data | TEA575X_WREN);
  udelay(2);
 }

 if (!tea->mute)
  tea->ops->set_pins(tea, 0);
}
