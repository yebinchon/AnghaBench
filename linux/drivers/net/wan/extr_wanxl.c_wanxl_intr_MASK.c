#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct card {int n_ports; int /*<<< orphan*/ * ports; scalar_t__ plx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DOORBELL_FROM_CARD_CABLE_0 ; 
 int DOORBELL_FROM_CARD_RX ; 
 int DOORBELL_FROM_CARD_TX_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PLX_DOORBELL_FROM_CARD ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void* dev_id)
{
	struct card *card = dev_id;
        int i;
        u32 stat;
        int handled = 0;


        while((stat = FUNC1(card->plx + PLX_DOORBELL_FROM_CARD)) != 0) {
                handled = 1;
		FUNC5(stat, card->plx + PLX_DOORBELL_FROM_CARD);

                for (i = 0; i < card->n_ports; i++) {
			if (stat & (1 << (DOORBELL_FROM_CARD_TX_0 + i)))
				FUNC4(&card->ports[i]);
			if (stat & (1 << (DOORBELL_FROM_CARD_CABLE_0 + i)))
				FUNC2(&card->ports[i]);
		}
		if (stat & (1 << DOORBELL_FROM_CARD_RX))
			FUNC3(card);
        }

        return FUNC0(handled);
}