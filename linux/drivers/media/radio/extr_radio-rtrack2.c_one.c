
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int io; } ;


 int outb_p (int,int ) ;

__attribute__((used)) static void one(struct radio_isa_card *isa)
{
 outb_p(5, isa->io);
 outb_p(7, isa->io);
 outb_p(5, isa->io);
}
