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
struct TYPE_6__ {int /*<<< orphan*/  instr_processed; } ;
struct octeon_instr_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  instr_pending; TYPE_3__ stats; int /*<<< orphan*/  host_write_index; int /*<<< orphan*/  octeon_read_index; scalar_t__ fill_cnt; } ;
struct TYPE_5__ {int iq; } ;
struct octeon_device {struct octeon_instr_queue** instr_queue; TYPE_2__ io_qmask; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct octeon_instr_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct octeon_device*) ; 

__attribute__((used)) static void FUNC10(struct octeon_device *oct)
{
	int i;

	/* Disable the input and output queues now. No more packets will
	 * arrive from Octeon, but we should wait for all packet processing
	 * to finish.
	 */

	/* To allow for in-flight requests */
	FUNC6(100);

	if (FUNC9(oct))
		FUNC3(&oct->pci_dev->dev, "There were pending requests\n");

	/* Force all requests waiting to be fetched by OCTEON to complete. */
	for (i = 0; i < FUNC1(oct); i++) {
		struct octeon_instr_queue *iq;

		if (!(oct->io_qmask.iq & FUNC0(i)))
			continue;
		iq = oct->instr_queue[i];

		if (FUNC2(&iq->instr_pending)) {
			FUNC7(&iq->lock);
			iq->fill_cnt = 0;
			iq->octeon_read_index = iq->host_write_index;
			iq->stats.instr_processed +=
			    FUNC2(&iq->instr_pending);
			FUNC4(oct, iq, 0);
			FUNC8(&iq->lock);
		}
	}

	/* Force all pending ordered list requests to time out. */
	FUNC5(oct, 1);

	/* We do not need to wait for output queue packets to be processed. */
}