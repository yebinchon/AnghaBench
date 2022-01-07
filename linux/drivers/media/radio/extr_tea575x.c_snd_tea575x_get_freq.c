
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_tea575x {int dummy; } ;


 int snd_tea575x_read (struct snd_tea575x*) ;
 int snd_tea575x_val_to_freq (struct snd_tea575x*,int ) ;

__attribute__((used)) static u32 snd_tea575x_get_freq(struct snd_tea575x *tea)
{
 return snd_tea575x_val_to_freq(tea, snd_tea575x_read(tea));
}
