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
struct virtnet_info {int max_queue_pairs; TYPE_1__* ctrl; TYPE_1__* sq; TYPE_1__* rq; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct virtnet_info *vi)
{
	int i;

	for (i = 0; i < vi->max_queue_pairs; i++) {
		FUNC1(&vi->rq[i].napi);
		FUNC2(&vi->rq[i].napi);
		FUNC2(&vi->sq[i].napi);
	}

	/* We called napi_hash_del() before netif_napi_del(),
	 * we need to respect an RCU grace period before freeing vi->rq
	 */
	FUNC3();

	FUNC0(vi->rq);
	FUNC0(vi->sq);
	FUNC0(vi->ctrl);
}