
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mute; } ;
struct fmr2 {int io; TYPE_1__ tea; } ;


 int STR_WREN ;
 int outb (int ,int ) ;

__attribute__((used)) static void tc9154a_set_pins(struct fmr2 *fmr2, u8 pins)
{
 if (!fmr2->tea.mute)
  pins |= STR_WREN;

 outb(pins, fmr2->io);
}
