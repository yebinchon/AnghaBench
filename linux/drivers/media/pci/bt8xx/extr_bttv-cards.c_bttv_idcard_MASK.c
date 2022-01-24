#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t nr; size_t type; TYPE_1__* pci; } ;
struct bttv {int cardid; TYPE_2__ c; } ;
struct TYPE_8__ {unsigned int* gpiomux; unsigned int gpiomask; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int id; size_t cardnr; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int subsystem_device; int subsystem_vendor; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 unsigned int UNSET ; 
 unsigned int audioall ; 
 unsigned int* audiomux ; 
 scalar_t__ bttv_num_tvcards ; 
 TYPE_4__* bttv_tvcards ; 
 scalar_t__* card ; 
 TYPE_3__* cards ; 
 unsigned int gpiomask ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,unsigned int,...) ; 

void FUNC4(struct bttv *btv)
{
	unsigned int gpiobits;
	int i,type;

	/* read PCI subsystem ID */
	btv->cardid  = btv->c.pci->subsystem_device << 16;
	btv->cardid |= btv->c.pci->subsystem_vendor;

	if (0 != btv->cardid && 0xffffffff != btv->cardid) {
		/* look for the card */
		for (type = -1, i = 0; cards[i].id != 0; i++)
			if (cards[i].id  == btv->cardid)
				type = i;

		if (type != -1) {
			/* found it */
			FUNC3("%d: detected: %s [card=%d], PCI subsystem ID is %04x:%04x\n",
				btv->c.nr, cards[type].name, cards[type].cardnr,
				btv->cardid & 0xffff,
				(btv->cardid >> 16) & 0xffff);
			btv->c.type = cards[type].cardnr;
		} else {
			/* 404 */
			FUNC3("%d: subsystem: %04x:%04x (UNKNOWN)\n",
				btv->c.nr, btv->cardid & 0xffff,
				(btv->cardid >> 16) & 0xffff);
			FUNC2("please mail id, board name and the correct card= insmod option to linux-media@vger.kernel.org\n");
		}
	}

	/* let the user override the autodetected type */
	if (card[btv->c.nr] < bttv_num_tvcards)
		btv->c.type=card[btv->c.nr];

	/* print which card config we are using */
	FUNC3("%d: using: %s [card=%d,%s]\n",
		btv->c.nr, bttv_tvcards[btv->c.type].name, btv->c.type,
		card[btv->c.nr] < bttv_num_tvcards
		? "insmod option" : "autodetected");

	/* overwrite gpio stuff ?? */
	if (UNSET == audioall && UNSET == audiomux[0])
		return;

	if (UNSET != audiomux[0]) {
		gpiobits = 0;
		for (i = 0; i < FUNC0(bttv_tvcards->gpiomux); i++) {
			bttv_tvcards[btv->c.type].gpiomux[i] = audiomux[i];
			gpiobits |= audiomux[i];
		}
	} else {
		gpiobits = audioall;
		for (i = 0; i < FUNC0(bttv_tvcards->gpiomux); i++) {
			bttv_tvcards[btv->c.type].gpiomux[i] = audioall;
		}
	}
	bttv_tvcards[btv->c.type].gpiomask = (UNSET != gpiomask) ? gpiomask : gpiobits;
	FUNC3("%d: gpio config override: mask=0x%x, mux=",
		btv->c.nr, bttv_tvcards[btv->c.type].gpiomask);
	for (i = 0; i < FUNC0(bttv_tvcards->gpiomux); i++) {
		FUNC1("%s0x%x",
			i ? "," : "", bttv_tvcards[btv->c.type].gpiomux[i]);
	}
	FUNC1("\n");
}