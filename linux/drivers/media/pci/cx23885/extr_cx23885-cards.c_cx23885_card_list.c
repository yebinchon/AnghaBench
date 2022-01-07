
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx23885_dev {int name; TYPE_1__* pci; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;


 int cx23885_bcount ;
 TYPE_2__* cx23885_boards ;
 int pr_info (char*,int ,...) ;

void cx23885_card_list(struct cx23885_dev *dev)
{
 int i;

 if (0 == dev->pci->subsystem_vendor &&
     0 == dev->pci->subsystem_device) {
  pr_info("%s: Board has no valid PCIe Subsystem ID and can't\n"
   "%s: be autodetected. Pass card=<n> insmod option\n"
   "%s: to workaround that. Redirect complaints to the\n"
   "%s: vendor of the TV card.  Best regards,\n"
   "%s:         -- tux\n",
   dev->name, dev->name, dev->name, dev->name, dev->name);
 } else {
  pr_info("%s: Your board isn't known (yet) to the driver.\n"
   "%s: Try to pick one of the existing card configs via\n"
   "%s: card=<n> insmod option.  Updating to the latest\n"
   "%s: version might help as well.\n",
   dev->name, dev->name, dev->name, dev->name);
 }
 pr_info("%s: Here is a list of valid choices for the card=<n> insmod option:\n",
        dev->name);
 for (i = 0; i < cx23885_bcount; i++)
  pr_info("%s:    card=%d -> %s\n",
   dev->name, i, cx23885_boards[i].name);
}
