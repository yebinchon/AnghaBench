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
struct octeon_device {int num_oqs; } ;
struct net_device {int dummy; } ;
struct lio {struct cavium_wq* rxq_status_wq; struct octeon_device* oct_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct cavium_wq {int /*<<< orphan*/ * wq; TYPE_1__ wk; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);
	struct octeon_device *oct = lio->oct_dev;
	struct cavium_wq *wq;
	int q_no;

	for (q_no = 0; q_no < oct->num_oqs; q_no++) {
		wq = &lio->rxq_status_wq[q_no];
		if (wq->wq) {
			FUNC1(&wq->wk.work);
			FUNC3(wq->wq);
			FUNC2(wq->wq);
			wq->wq = NULL;
		}
	}
}