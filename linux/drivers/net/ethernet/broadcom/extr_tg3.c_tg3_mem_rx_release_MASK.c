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
struct tg3_napi {int /*<<< orphan*/ * rx_rcb; int /*<<< orphan*/  rx_rcb_mapping; int /*<<< orphan*/  prodring; } ;
struct tg3 {int irq_max; TYPE_1__* pdev; struct tg3_napi* napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tg3 *tp)
{
	int i;

	for (i = 0; i < tp->irq_max; i++) {
		struct tg3_napi *tnapi = &tp->napi[i];

		FUNC2(tp, &tnapi->prodring);

		if (!tnapi->rx_rcb)
			continue;

		FUNC1(&tp->pdev->dev,
				  FUNC0(tp),
				  tnapi->rx_rcb,
				  tnapi->rx_rcb_mapping);
		tnapi->rx_rcb = NULL;
	}
}