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
struct tap_queue {int /*<<< orphan*/  sk; int /*<<< orphan*/  next; int /*<<< orphan*/  tap; scalar_t__ enabled; } ;
struct tap_dev {int /*<<< orphan*/  numqueues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tap_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct tap_queue*) ; 

__attribute__((used)) static void FUNC9(struct tap_queue *q)
{
	struct tap_dev *tap;

	FUNC4();
	tap = FUNC3(q->tap);

	if (tap) {
		if (q->enabled)
			FUNC0(FUNC8(q));

		tap->numqueues--;
		FUNC1(q->tap, NULL);
		FUNC6(&q->sk);
		FUNC2(&q->next);
	}

	FUNC5();

	FUNC7();
	FUNC6(&q->sk);
}