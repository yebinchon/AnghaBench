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
struct net_device {int dummy; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {int /*<<< orphan*/  dma; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_common*) ; 
 struct cpsw_common* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct cpsw_common *cpsw = FUNC2(ndev);
	int i;

	/* Disable NAPI scheduling */
	FUNC1(cpsw);

	/* Stop all transmit queues for every network device.
	 */
	for (i = 0; i < cpsw->data.slaves; i++) {
		ndev = cpsw->slaves[i].ndev;
		if (!(ndev && FUNC3(ndev)))
			continue;

		FUNC4(ndev);

		/* Barrier, so that stop_queue visible to other cpus */
		FUNC5();
	}

	/* Handle rest of tx packets and stop cpdma channels */
	FUNC0(cpsw->dma);
}