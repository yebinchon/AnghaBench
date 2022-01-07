
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cb710_chip {int slots; unsigned int slot_mask; TYPE_1__* slot; } ;
struct TYPE_2__ {int * irq_handler; int pdev; } ;


 int BUG_ON (int ) ;
 int platform_device_unregister (int *) ;
 int smp_rmb () ;

__attribute__((used)) static void cb710_unregister_slot(struct cb710_chip *chip,
 unsigned slot_mask)
{
 int nr = chip->slots - 1;

 if (!(chip->slot_mask & slot_mask))
  return;

 platform_device_unregister(&chip->slot[nr].pdev);


 smp_rmb();
 BUG_ON(chip->slot[nr].irq_handler != ((void*)0));


 --chip->slots;
 chip->slot_mask &= ~slot_mask;
}
