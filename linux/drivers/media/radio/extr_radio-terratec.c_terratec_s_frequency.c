
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int io; } ;
typedef int buffer ;


 int CLK_ON ;
 int DATA ;
 int WRT_EN ;
 int memset (unsigned char*,int ,int) ;
 int outb (int,int ) ;

__attribute__((used)) static int terratec_s_frequency(struct radio_isa_card *isa, u32 freq)
{
 int i;
 int p;
 int temp;
 long rest;
 unsigned char buffer[25];

 freq = freq / 160;
 memset(buffer, 0, sizeof(buffer));

 rest = freq * 10 + 10700;

 i = 13;
 p = 10;
 temp = 102400;
 while (rest != 0) {
  if (rest % temp == rest)
   buffer[i] = 0;
  else {
   buffer[i] = 1;
   rest = rest - temp;
  }
  i--;
  p--;
  temp = temp / 2;
 }

 for (i = 24; i > -1; i--) {
  if (buffer[i] == 1) {
   outb(WRT_EN | DATA, isa->io);
   outb(WRT_EN | DATA | CLK_ON, isa->io);
   outb(WRT_EN | DATA, isa->io);
  } else {
   outb(WRT_EN | 0x00, isa->io);
   outb(WRT_EN | 0x00 | CLK_ON, isa->io);
  }
 }
 outb(0x00, isa->io);
 return 0;
}
