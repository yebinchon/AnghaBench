
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int io; } ;


 int outb (int,int ) ;

__attribute__((used)) static int rtrack2_s_mute_volume(struct radio_isa_card *isa, bool mute, int vol)
{
 outb(mute, isa->io);
 return 0;
}
