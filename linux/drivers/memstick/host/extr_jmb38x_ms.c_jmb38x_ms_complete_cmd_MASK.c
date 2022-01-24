#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct memstick_host {int /*<<< orphan*/  dev; } ;
struct jmb38x_ms_host {int cmd_flags; TYPE_3__* req; scalar_t__ addr; TYPE_2__* chip; int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int int_reg; scalar_t__ data_dir; int /*<<< orphan*/  error; int /*<<< orphan*/  sg; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BLOCK ; 
 scalar_t__ DMA_CONTROL ; 
 int DMA_DATA ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ETIME ; 
 scalar_t__ HOST_CONTROL ; 
 unsigned int HOST_CONTROL_LED ; 
 scalar_t__ INT_SIGNAL_ENABLE ; 
 scalar_t__ INT_STATUS ; 
 scalar_t__ INT_STATUS_ENABLE ; 
 unsigned int INT_STATUS_FIFO_RRDY ; 
 unsigned int INT_STATUS_FIFO_WRDY ; 
 scalar_t__ READ ; 
 scalar_t__ STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct memstick_host*) ; 
 int FUNC4 (struct memstick_host*,TYPE_3__**) ; 
 struct jmb38x_ms_host* FUNC5 (struct memstick_host*) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct memstick_host *msh, int last)
{
	struct jmb38x_ms_host *host = FUNC5(msh);
	unsigned int t_val = 0;
	int rc;

	FUNC0(&host->timer);

	FUNC1(&msh->dev, "c control %08x\n",
		FUNC6(host->addr + HOST_CONTROL));
	FUNC1(&msh->dev, "c status %08x\n",
		FUNC6(host->addr + INT_STATUS));
	FUNC1(&msh->dev, "c hstatus %08x\n", FUNC6(host->addr + STATUS));

	host->req->int_reg = FUNC6(host->addr + STATUS) & 0xff;

	FUNC7(0, host->addr + BLOCK);
	FUNC7(0, host->addr + DMA_CONTROL);

	if (host->cmd_flags & DMA_DATA) {
		FUNC2(&host->chip->pdev->dev, &host->req->sg, 1,
			     host->req->data_dir == READ
			     ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
	} else {
		t_val = FUNC6(host->addr + INT_STATUS_ENABLE);
		if (host->req->data_dir == READ)
			t_val &= ~INT_STATUS_FIFO_RRDY;
		else
			t_val &= ~INT_STATUS_FIFO_WRDY;

		FUNC7(t_val, host->addr + INT_STATUS_ENABLE);
		FUNC7(t_val, host->addr + INT_SIGNAL_ENABLE);
	}

	FUNC7((~HOST_CONTROL_LED) & FUNC6(host->addr + HOST_CONTROL),
	       host->addr + HOST_CONTROL);

	if (!last) {
		do {
			rc = FUNC4(msh, &host->req);
		} while (!rc && FUNC3(msh));
	} else {
		do {
			rc = FUNC4(msh, &host->req);
			if (!rc)
				host->req->error = -ETIME;
		} while (!rc);
	}
}