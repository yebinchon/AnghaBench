
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_rsrc {struct nubus_board* board; } ;
struct nubus_dirent {int dummy; } ;
struct nubus_dir {int dummy; } ;
struct nubus_board {int slot; int slot_addr; int dev; } ;
struct net_device {int base_addr; int* dev_addr; int mem_start; int mem_end; int irq; } ;
typedef enum mac8390_type { ____Placeholder_mac8390_type } mac8390_type ;


 int CABLETRON_8390_BASE ;
 int CABLETRON_8390_MEM ;
 int DAYNA_8390_BASE ;
 int DAYNA_8390_MEM ;
 int INTERLAN_8390_BASE ;
 int INTERLAN_8390_MEM ;




 int NUBUS_RESID_MAC_ADDRESS ;
 int NUBUS_RESID_MINOR_BASEOS ;
 int NUBUS_RESID_MINOR_LENGTH ;
 int SLOT2IRQ (int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int mac8390_memsize (int) ;
 int nubus_find_rsrc (struct nubus_dir*,int ,struct nubus_dirent*) ;
 int nubus_get_func_dir (struct nubus_rsrc*,struct nubus_dir*) ;
 int nubus_get_rsrc_mem (int*,struct nubus_dirent*,int) ;
 int nubus_rewinddir (struct nubus_dir*) ;
 int* useresources ;

__attribute__((used)) static bool mac8390_rsrc_init(struct net_device *dev,
         struct nubus_rsrc *fres,
         enum mac8390_type cardtype)
{
 struct nubus_board *board = fres->board;
 struct nubus_dir dir;
 struct nubus_dirent ent;
 int offset;
 volatile unsigned short *i;

 dev->irq = SLOT2IRQ(board->slot);

 dev->base_addr = board->slot_addr | ((board->slot & 0xf) << 20);






 if (nubus_get_func_dir(fres, &dir) == -1) {
  dev_err(&board->dev,
   "Unable to get Nubus functional directory\n");
  return 0;
 }


 if (nubus_find_rsrc(&dir, NUBUS_RESID_MAC_ADDRESS, &ent) == -1) {
  dev_info(&board->dev, "MAC address resource not found\n");
  return 0;
 }

 nubus_get_rsrc_mem(dev->dev_addr, &ent, 6);

 if (useresources[cardtype] == 1) {
  nubus_rewinddir(&dir);
  if (nubus_find_rsrc(&dir, NUBUS_RESID_MINOR_BASEOS,
        &ent) == -1) {
   dev_err(&board->dev,
    "Memory offset resource not found\n");
   return 0;
  }
  nubus_get_rsrc_mem(&offset, &ent, 4);
  dev->mem_start = dev->base_addr + offset;

  dev->base_addr = dev->mem_start + 0x10000;
  nubus_rewinddir(&dir);
  if (nubus_find_rsrc(&dir, NUBUS_RESID_MINOR_LENGTH,
        &ent) == -1) {
   dev_info(&board->dev,
     "Memory length resource not found, probing\n");
   offset = mac8390_memsize(dev->mem_start);
  } else {
   nubus_get_rsrc_mem(&offset, &ent, 4);
  }
  dev->mem_end = dev->mem_start + offset;
 } else {
  switch (cardtype) {
  case 128:
  case 130:
   dev->base_addr = (int)(board->slot_addr +
            DAYNA_8390_BASE);
   dev->mem_start = (int)(board->slot_addr +
            DAYNA_8390_MEM);
   dev->mem_end = dev->mem_start +
           mac8390_memsize(dev->mem_start);
   break;
  case 129:
   dev->base_addr = (int)(board->slot_addr +
            INTERLAN_8390_BASE);
   dev->mem_start = (int)(board->slot_addr +
            INTERLAN_8390_MEM);
   dev->mem_end = dev->mem_start +
           mac8390_memsize(dev->mem_start);
   break;
  case 131:
   dev->base_addr = (int)(board->slot_addr +
            CABLETRON_8390_BASE);
   dev->mem_start = (int)(board->slot_addr +
            CABLETRON_8390_MEM);






   i = (void *)dev->base_addr;
   *i = 0x21;
   dev->mem_end = dev->mem_start +
           mac8390_memsize(dev->mem_start);
   break;

  default:
   dev_err(&board->dev,
    "No known base address for card type\n");
   return 0;
  }
 }

 return 1;
}
