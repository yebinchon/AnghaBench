
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_tea575x {int tuned; int stereo; TYPE_1__* ops; scalar_t__ mute; } ;
struct TYPE_2__ {int (* read_val ) (struct snd_tea575x*) ;int (* get_pins ) (struct snd_tea575x*) ;int (* set_pins ) (struct snd_tea575x*,int ) ;int (* set_direction ) (struct snd_tea575x*,int ) ;} ;


 int TEA575X_CLK ;
 int TEA575X_DATA ;
 int TEA575X_MOST ;
 int TEA575X_WREN ;
 int stub1 (struct snd_tea575x*) ;
 int stub2 (struct snd_tea575x*,int ) ;
 int stub3 (struct snd_tea575x*,int ) ;
 int stub4 (struct snd_tea575x*,int ) ;
 int stub5 (struct snd_tea575x*) ;
 int stub6 (struct snd_tea575x*,int ) ;
 int stub7 (struct snd_tea575x*) ;
 int stub8 (struct snd_tea575x*,int ) ;
 int udelay (int) ;

__attribute__((used)) static u32 snd_tea575x_read(struct snd_tea575x *tea)
{
 u16 l, rdata;
 u32 data = 0;

 if (tea->ops->read_val)
  return tea->ops->read_val(tea);

 tea->ops->set_direction(tea, 0);
 tea->ops->set_pins(tea, 0);
 udelay(16);

 for (l = 24; l--;) {
  tea->ops->set_pins(tea, TEA575X_CLK);
  udelay(2);
  if (!l)
   tea->tuned = tea->ops->get_pins(tea) & TEA575X_MOST ? 0 : 1;
  tea->ops->set_pins(tea, 0);
  udelay(2);
  data <<= 1;
  rdata = tea->ops->get_pins(tea);
  if (!l)
   tea->stereo = (rdata & TEA575X_MOST) ? 0 : 1;
  if (rdata & TEA575X_DATA)
   data++;
  udelay(2);
 }

 if (tea->mute)
  tea->ops->set_pins(tea, TEA575X_WREN);

 return data;
}
