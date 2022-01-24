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
struct napi_struct {int dummy; } ;
struct cpsw_common {int rx_irq_disabled; int /*<<< orphan*/ * irqs_table; TYPE_2__* wr_regs; TYPE_1__* rxv; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_en; } ;
struct TYPE_3__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*,int) ; 
 struct cpsw_common* FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct napi_struct *napi_rx, int budget)
{
	struct cpsw_common *cpsw = FUNC3(napi_rx);
	int num_rx;

	num_rx = FUNC0(cpsw->rxv[0].ch, budget);
	if (num_rx < budget) {
		FUNC2(napi_rx, num_rx);
		FUNC4(0xff, &cpsw->wr_regs->rx_en);
		if (cpsw->rx_irq_disabled) {
			cpsw->rx_irq_disabled = false;
			FUNC1(cpsw->irqs_table[0]);
		}
	}

	return num_rx;
}