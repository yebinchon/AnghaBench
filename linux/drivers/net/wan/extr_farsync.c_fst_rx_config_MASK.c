#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct fst_port_info {int index; scalar_t__ rxpos; struct fst_card_info* card; } ;
struct fst_card_info {int /*<<< orphan*/  card_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  mcnt; int /*<<< orphan*/  bcnt; int /*<<< orphan*/  hadr; int /*<<< orphan*/  ladr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_OWN ; 
 int /*<<< orphan*/  FUNC1 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEN_RX_BUFFER ; 
 int NUM_RX_BUFFER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ *** rxBuffer ; 
 TYPE_1__** rxDescrRing ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct fst_port_info *port)
{
	int i;
	int pi;
	unsigned int offset;
	unsigned long flags;
	struct fst_card_info *card;

	pi = port->index;
	card = port->card;
	FUNC4(&card->card_lock, flags);
	for (i = 0; i < NUM_RX_BUFFER; i++) {
		offset = FUNC0(rxBuffer[pi][i][0]);

		FUNC2(card, rxDescrRing[pi][i].ladr, (u16) offset);
		FUNC1(card, rxDescrRing[pi][i].hadr, (u8) (offset >> 16));
		FUNC2(card, rxDescrRing[pi][i].bcnt, FUNC3(LEN_RX_BUFFER));
		FUNC2(card, rxDescrRing[pi][i].mcnt, LEN_RX_BUFFER);
		FUNC1(card, rxDescrRing[pi][i].bits, DMA_OWN);
	}
	port->rxpos = 0;
	FUNC5(&card->card_lock, flags);
}