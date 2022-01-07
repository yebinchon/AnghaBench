
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pci; } ;
struct bttv {TYPE_1__ c; } ;
struct TYPE_4__ {int devfn; } ;


 int BT848_GPIO_DATA ;
 int BT848_GPIO_OUT_EN ;
 int PCI_SLOT (int ) ;
 int btread (int ) ;
 int btwrite (int,int ) ;
 int msleep (int) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static void
init_PCI8604PW(struct bttv *btv)
{
 int state;

 if ((PCI_SLOT(btv->c.pci->devfn) & ~3) != 0xC) {
  pr_warn("This is not a PCI-8604PW\n");
  return;
 }

 if (PCI_SLOT(btv->c.pci->devfn) != 0xD)
  return;

 btwrite(0x080002, BT848_GPIO_OUT_EN);

 state = (btread(BT848_GPIO_DATA) >> 21) & 7;

 for (;;) {
  switch (state) {
  case 1:
  case 5:
  case 6:
  case 4:
   pr_debug("PCI-8604PW in state %i, toggling pin\n",
     state);
   btwrite(0x080000, BT848_GPIO_DATA);
   msleep(1);
   btwrite(0x000000, BT848_GPIO_DATA);
   msleep(1);
   break;
  case 7:
   pr_info("PCI-8604PW unlocked\n");
   return;
  case 0:





   pr_err("PCI-8604PW locked until reset\n");
   return;
  default:
   pr_err("PCI-8604PW in unknown state %i\n", state);
   return;
  }

  state = (state << 4) | ((btread(BT848_GPIO_DATA) >> 21) & 7);

  switch (state) {
  case 0x15:
  case 0x56:
  case 0x64:
  case 0x47:




   break;
  default:
   pr_err("PCI-8604PW invalid transition %i -> %i\n",
          state >> 4, state & 7);
   return;
  }
  state &= 7;
 }
}
