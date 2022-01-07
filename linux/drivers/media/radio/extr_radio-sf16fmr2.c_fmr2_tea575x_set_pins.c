
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_tea575x {struct fmr2* private_data; } ;
struct fmr2 {int io; } ;


 int STR_CLK ;
 int STR_DATA ;
 int STR_WREN ;
 int TEA575X_CLK ;
 int TEA575X_DATA ;
 int TEA575X_WREN ;
 int outb (int,int ) ;

__attribute__((used)) static void fmr2_tea575x_set_pins(struct snd_tea575x *tea, u8 pins)
{
 struct fmr2 *fmr2 = tea->private_data;
 u8 bits = 0;

 bits |= (pins & TEA575X_DATA) ? STR_DATA : 0;
 bits |= (pins & TEA575X_CLK) ? STR_CLK : 0;

 bits |= (pins & TEA575X_WREN) ? 0 : STR_WREN | STR_DATA;

 outb(bits, fmr2->io);
}
