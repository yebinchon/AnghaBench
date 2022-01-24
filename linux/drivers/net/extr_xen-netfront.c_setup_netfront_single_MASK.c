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
struct netfront_queue {int rx_irq; int tx_irq; scalar_t__ tx_evtchn; TYPE_2__* info; scalar_t__ rx_evtchn; } ;
struct TYPE_4__ {int /*<<< orphan*/  xbdev; TYPE_1__* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netfront_queue*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  xennet_interrupt ; 

__attribute__((used)) static int FUNC3(struct netfront_queue *queue)
{
	int err;

	err = FUNC1(queue->info->xbdev, &queue->tx_evtchn);
	if (err < 0)
		goto fail;

	err = FUNC0(queue->tx_evtchn,
					xennet_interrupt,
					0, queue->info->netdev->name, queue);
	if (err < 0)
		goto bind_fail;
	queue->rx_evtchn = queue->tx_evtchn;
	queue->rx_irq = queue->tx_irq = err;

	return 0;

bind_fail:
	FUNC2(queue->info->xbdev, queue->tx_evtchn);
	queue->tx_evtchn = 0;
fail:
	return err;
}