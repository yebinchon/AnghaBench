
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int release; int * parent; } ;
struct TYPE_7__ {char const* name; TYPE_2__ dev; int id; } ;
struct cb710_slot {unsigned int iobase; TYPE_3__ pdev; } ;
struct cb710_chip {int slots; unsigned int iobase; unsigned int slot_mask; int slot_refs_count; TYPE_1__* pdev; int platform_id; struct cb710_slot* slot; } ;
struct TYPE_5__ {int dev; } ;


 int atomic_inc (int *) ;
 int cb710_chip_dev (struct cb710_chip*) ;
 int cb710_release_slot ;
 int dev_dbg (int ,char*,char const*,int ,int,unsigned int,unsigned int) ;
 int platform_device_put (TYPE_3__*) ;
 int platform_device_register (TYPE_3__*) ;
 int smp_wmb () ;

__attribute__((used)) static int cb710_register_slot(struct cb710_chip *chip,
 unsigned slot_mask, unsigned io_offset, const char *name)
{
 int nr = chip->slots;
 struct cb710_slot *slot = &chip->slot[nr];
 int err;

 dev_dbg(cb710_chip_dev(chip),
  "register: %s.%d; slot %d; mask %d; IO offset: 0x%02X\n",
  name, chip->platform_id, nr, slot_mask, io_offset);



 ++chip->slots;
 smp_wmb();

 slot->iobase = chip->iobase + io_offset;
 slot->pdev.name = name;
 slot->pdev.id = chip->platform_id;
 slot->pdev.dev.parent = &chip->pdev->dev;
 slot->pdev.dev.release = cb710_release_slot;

 err = platform_device_register(&slot->pdev);





 if (err) {


  platform_device_put(&slot->pdev);


  --chip->slots;
  return err;
 }

 chip->slot_mask |= slot_mask;

 return 0;
}
