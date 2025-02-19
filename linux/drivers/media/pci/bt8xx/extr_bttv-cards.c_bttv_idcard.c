
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t nr; size_t type; TYPE_1__* pci; } ;
struct bttv {int cardid; TYPE_2__ c; } ;
struct TYPE_8__ {unsigned int* gpiomux; unsigned int gpiomask; int name; } ;
struct TYPE_7__ {int id; size_t cardnr; int name; } ;
struct TYPE_5__ {int subsystem_device; int subsystem_vendor; } ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int UNSET ;
 unsigned int audioall ;
 unsigned int* audiomux ;
 scalar_t__ bttv_num_tvcards ;
 TYPE_4__* bttv_tvcards ;
 scalar_t__* card ;
 TYPE_3__* cards ;
 unsigned int gpiomask ;
 int pr_cont (char*,...) ;
 int pr_debug (char*) ;
 int pr_info (char*,size_t,unsigned int,...) ;

void bttv_idcard(struct bttv *btv)
{
 unsigned int gpiobits;
 int i,type;


 btv->cardid = btv->c.pci->subsystem_device << 16;
 btv->cardid |= btv->c.pci->subsystem_vendor;

 if (0 != btv->cardid && 0xffffffff != btv->cardid) {

  for (type = -1, i = 0; cards[i].id != 0; i++)
   if (cards[i].id == btv->cardid)
    type = i;

  if (type != -1) {

   pr_info("%d: detected: %s [card=%d], PCI subsystem ID is %04x:%04x\n",
    btv->c.nr, cards[type].name, cards[type].cardnr,
    btv->cardid & 0xffff,
    (btv->cardid >> 16) & 0xffff);
   btv->c.type = cards[type].cardnr;
  } else {

   pr_info("%d: subsystem: %04x:%04x (UNKNOWN)\n",
    btv->c.nr, btv->cardid & 0xffff,
    (btv->cardid >> 16) & 0xffff);
   pr_debug("please mail id, board name and the correct card= insmod option to linux-media@vger.kernel.org\n");
  }
 }


 if (card[btv->c.nr] < bttv_num_tvcards)
  btv->c.type=card[btv->c.nr];


 pr_info("%d: using: %s [card=%d,%s]\n",
  btv->c.nr, bttv_tvcards[btv->c.type].name, btv->c.type,
  card[btv->c.nr] < bttv_num_tvcards
  ? "insmod option" : "autodetected");


 if (UNSET == audioall && UNSET == audiomux[0])
  return;

 if (UNSET != audiomux[0]) {
  gpiobits = 0;
  for (i = 0; i < ARRAY_SIZE(bttv_tvcards->gpiomux); i++) {
   bttv_tvcards[btv->c.type].gpiomux[i] = audiomux[i];
   gpiobits |= audiomux[i];
  }
 } else {
  gpiobits = audioall;
  for (i = 0; i < ARRAY_SIZE(bttv_tvcards->gpiomux); i++) {
   bttv_tvcards[btv->c.type].gpiomux[i] = audioall;
  }
 }
 bttv_tvcards[btv->c.type].gpiomask = (UNSET != gpiomask) ? gpiomask : gpiobits;
 pr_info("%d: gpio config override: mask=0x%x, mux=",
  btv->c.nr, bttv_tvcards[btv->c.type].gpiomask);
 for (i = 0; i < ARRAY_SIZE(bttv_tvcards->gpiomux); i++) {
  pr_cont("%s0x%x",
   i ? "," : "", bttv_tvcards[btv->c.type].gpiomux[i]);
 }
 pr_cont("\n");
}
