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
struct cpsw_common {int /*<<< orphan*/  dma; TYPE_1__* wr_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_en; int /*<<< orphan*/  tx_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct cpsw_common *cpsw)
{
	FUNC1(0xFF, &cpsw->wr_regs->tx_en);
	FUNC1(0xFF, &cpsw->wr_regs->rx_en);

	FUNC0(cpsw->dma, true);
	return;
}