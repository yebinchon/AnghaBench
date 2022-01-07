
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {scalar_t__ io; } ;


 int outb (int,scalar_t__) ;

__attribute__((used)) static int terratec_s_mute_volume(struct radio_isa_card *isa, bool mute, int vol)
{
 int i;

 if (mute)
  vol = 0;
 vol = vol + (vol * 32);
 for (i = 0; i < 8; i++) {
  if (vol & (0x80 >> i))
   outb(0x80, isa->io + 1);
  else
   outb(0x00, isa->io + 1);
 }
 return 0;
}
