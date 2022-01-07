
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int io; int mute; } ;


 int one (struct radio_isa_card*) ;
 int outb_p (int,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int zero (struct radio_isa_card*) ;

__attribute__((used)) static int rtrack2_s_frequency(struct radio_isa_card *isa, u32 freq)
{
 int i;

 freq = freq / 200 + 856;

 outb_p(0xc8, isa->io);
 outb_p(0xc9, isa->io);
 outb_p(0xc9, isa->io);

 for (i = 0; i < 10; i++)
  zero(isa);

 for (i = 14; i >= 0; i--)
  if (freq & (1 << i))
   one(isa);
  else
   zero(isa);

 outb_p(0xc8, isa->io);
 outb_p(v4l2_ctrl_g_ctrl(isa->mute), isa->io);
 return 0;
}
