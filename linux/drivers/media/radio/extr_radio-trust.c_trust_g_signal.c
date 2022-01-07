
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int io; } ;


 int inb (int ) ;

__attribute__((used)) static u32 trust_g_signal(struct radio_isa_card *isa)
{
 int i, v;

 for (i = 0, v = 0; i < 100; i++)
  v |= inb(isa->io);
 return (v & 1) ? 0 : 0xffff;
}
