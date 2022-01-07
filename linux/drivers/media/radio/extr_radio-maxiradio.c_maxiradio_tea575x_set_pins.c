
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_tea575x {struct maxiradio* private_data; } ;
struct maxiradio {int io; } ;


 int TEA575X_CLK ;
 int TEA575X_DATA ;
 int TEA575X_WREN ;
 int clk ;
 int data ;
 int outb (int,int ) ;
 int power ;
 int wren ;

__attribute__((used)) static void maxiradio_tea575x_set_pins(struct snd_tea575x *tea, u8 pins)
{
 struct maxiradio *dev = tea->private_data;
 u8 bits = 0;

 bits |= (pins & TEA575X_DATA) ? data : 0;
 bits |= (pins & TEA575X_CLK) ? clk : 0;
 bits |= (pins & TEA575X_WREN) ? wren : 0;
 bits |= power;

 outb(bits, dev->io);
}
