
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;


 int mdelay (int) ;
 scalar_t__ stub1 (struct nand_chip*) ;
 int touch_softlockup_watchdog () ;

__attribute__((used)) static void panic_nand_wait_ready(struct nand_chip *chip, unsigned long timeo)
{
 int i;


 for (i = 0; i < timeo; i++) {
  if (chip->legacy.dev_ready(chip))
   break;
  touch_softlockup_watchdog();
  mdelay(1);
 }
}
