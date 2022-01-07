
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_tea575x {struct maxiradio* private_data; } ;
struct maxiradio {int io; } ;


 int TEA575X_DATA ;
 int TEA575X_MOST ;
 int data ;
 int inb (int ) ;
 int mo_st ;

__attribute__((used)) static u8 maxiradio_tea575x_get_pins(struct snd_tea575x *tea)
{
 struct maxiradio *dev = tea->private_data;
 u8 bits = inb(dev->io);

 return ((bits & data) ? TEA575X_DATA : 0) |
  ((bits & mo_st) ? TEA575X_MOST : 0);
}
