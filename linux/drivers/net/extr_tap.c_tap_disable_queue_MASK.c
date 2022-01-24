#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tap_queue {int enabled; int queue_index; int /*<<< orphan*/  tap; } ;
struct tap_dev {int numvtaps; int /*<<< orphan*/ * taps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tap_queue*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tap_queue *q)
{
	struct tap_dev *tap;
	struct tap_queue *nq;

	FUNC0();
	if (!q->enabled)
		return -EINVAL;

	tap = FUNC4(q->tap);

	if (tap) {
		int index = q->queue_index;
		FUNC1(index >= tap->numvtaps);
		nq = FUNC4(tap->taps[tap->numvtaps - 1]);
		nq->queue_index = index;

		FUNC3(tap->taps[index], nq);
		FUNC2(tap->taps[tap->numvtaps - 1], NULL);
		q->enabled = false;

		tap->numvtaps--;
	}

	return 0;
}