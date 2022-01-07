
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int io; } ;


 int inb (int ) ;

__attribute__((used)) static u32 terratec_g_signal(struct radio_isa_card *isa)
{

 return (inb(isa->io) & 2) ? 0 : 0xffff;
}
