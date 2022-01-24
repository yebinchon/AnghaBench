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
struct virtnet_info {int affinity_hint_set; int max_queue_pairs; TYPE_2__* sq; TYPE_1__* rq; } ;
struct TYPE_4__ {int /*<<< orphan*/  vq; } ;
struct TYPE_3__ {int /*<<< orphan*/  vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct virtnet_info *vi)
{
	int i;

	if (vi->affinity_hint_set) {
		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC0(vi->rq[i].vq, NULL);
			FUNC0(vi->sq[i].vq, NULL);
		}

		vi->affinity_hint_set = false;
	}
}