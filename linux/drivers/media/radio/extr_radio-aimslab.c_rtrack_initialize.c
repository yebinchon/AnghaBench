
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int io; } ;


 int msleep (int) ;
 int outb (int,int ) ;

__attribute__((used)) static int rtrack_initialize(struct radio_isa_card *isa)
{

 outb(0x90, isa->io);
 msleep(3000);
 outb(0xc0, isa->io);
 return 0;
}
