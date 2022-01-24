#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rx_std; } ;
struct tg3_napi {TYPE_1__ prodring; TYPE_2__* rx_rcb; scalar_t__ rx_rcb_ptr; TYPE_2__* tx_ring; scalar_t__ tx_cons; scalar_t__ tx_prod; TYPE_2__* hw_status; scalar_t__ last_irq_tag; scalar_t__ last_tag; } ;
struct tg3 {int irq_cnt; struct tg3_napi* napi; } ;
struct TYPE_4__ {scalar_t__ status_tag; scalar_t__ status; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TG3_HW_STATUS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  TG3_TX_RING_BYTES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 scalar_t__ FUNC3 (struct tg3*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp)
{
	int i;

	/* Free up all the SKBs. */
	FUNC2(tp);

	for (i = 0; i < tp->irq_cnt; i++) {
		struct tg3_napi *tnapi = &tp->napi[i];

		tnapi->last_tag = 0;
		tnapi->last_irq_tag = 0;
		tnapi->hw_status->status = 0;
		tnapi->hw_status->status_tag = 0;
		FUNC1(tnapi->hw_status, 0, TG3_HW_STATUS_SIZE);

		tnapi->tx_prod = 0;
		tnapi->tx_cons = 0;
		if (tnapi->tx_ring)
			FUNC1(tnapi->tx_ring, 0, TG3_TX_RING_BYTES);

		tnapi->rx_rcb_ptr = 0;
		if (tnapi->rx_rcb)
			FUNC1(tnapi->rx_rcb, 0, FUNC0(tp));

		if (tnapi->prodring.rx_std &&
		    FUNC3(tp, &tnapi->prodring)) {
			FUNC2(tp);
			return -ENOMEM;
		}
	}

	return 0;
}