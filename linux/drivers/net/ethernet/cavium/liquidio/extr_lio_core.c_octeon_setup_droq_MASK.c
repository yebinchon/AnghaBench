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
struct octeon_device {TYPE_1__** droq; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  pkts_credit_reg; int /*<<< orphan*/  max_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct octeon_device*,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct octeon_device *oct, int q_no, int num_descs,
			     int desc_size, void *app_ctx)
{
	int ret_val;

	FUNC0(&oct->pci_dev->dev, "Creating Droq: %d\n", q_no);
	/* droq creation and local register settings. */
	ret_val = FUNC1(oct, q_no, num_descs, desc_size, app_ctx);
	if (ret_val < 0)
		return ret_val;

	if (ret_val == 1) {
		FUNC0(&oct->pci_dev->dev, "Using default droq %d\n", q_no);
		return 0;
	}

	/* Enable the droq queues */
	FUNC2(oct, q_no, 1);

	/* Send Credit for Octeon Output queues. Credits are always
	 * sent after the output queue is enabled.
	 */
	FUNC3(oct->droq[q_no]->max_count, oct->droq[q_no]->pkts_credit_reg);

	return ret_val;
}