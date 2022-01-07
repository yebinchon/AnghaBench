
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fst_card_info {int nports; size_t type; int irq; TYPE_2__* ports; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int name; } ;


 TYPE_1__* port_to_dev (TYPE_2__*) ;
 int pr_err (char*,int,int) ;
 int pr_info (char*,int ,int ,int ,int ,int) ;
 int register_hdlc_device (int ) ;
 int * type_strings ;
 int unregister_hdlc_device (int ) ;

__attribute__((used)) static int
fst_init_card(struct fst_card_info *card)
{
 int i;
 int err;





 for (i = 0; i < card->nports; i++) {
  err = register_hdlc_device(card->ports[i].dev);
  if (err < 0) {
   pr_err("Cannot register HDLC device for port %d (errno %d)\n",
    i, -err);
   while (i--)
    unregister_hdlc_device(card->ports[i].dev);
   return err;
  }
 }

 pr_info("%s-%s: %s IRQ%d, %d ports\n",
  port_to_dev(&card->ports[0])->name,
  port_to_dev(&card->ports[card->nports - 1])->name,
  type_strings[card->type], card->irq, card->nports);
 return 0;
}
