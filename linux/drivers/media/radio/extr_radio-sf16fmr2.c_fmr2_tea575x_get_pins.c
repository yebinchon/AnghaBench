
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_tea575x {struct fmr2* private_data; } ;
struct fmr2 {int io; } ;


 int STR_DATA ;
 int STR_MOST ;
 int TEA575X_DATA ;
 int TEA575X_MOST ;
 int inb (int ) ;

__attribute__((used)) static u8 fmr2_tea575x_get_pins(struct snd_tea575x *tea)
{
 struct fmr2 *fmr2 = tea->private_data;
 u8 bits = inb(fmr2->io);

 return ((bits & STR_DATA) ? TEA575X_DATA : 0) |
  ((bits & STR_MOST) ? TEA575X_MOST : 0);
}
