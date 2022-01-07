
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;


 int GEMTEK_NS ;
 int SHORT_DELAY ;
 int inb_p (int) ;
 int outb_p (int,int) ;
 int udelay (int ) ;

__attribute__((used)) static bool gemtek_probe(struct radio_isa_card *isa, int io)
{
 int i, q;

 q = inb_p(io);


 for (i = 0; i < 3; ++i) {
  outb_p(1 << i, io);
  udelay(SHORT_DELAY);

  if ((inb_p(io) & ~GEMTEK_NS) != (0x17 | (1 << (i + 5))))
   return 0;
 }
 outb_p(q >> 5, io);
 udelay(SHORT_DELAY);
 return 1;
}
