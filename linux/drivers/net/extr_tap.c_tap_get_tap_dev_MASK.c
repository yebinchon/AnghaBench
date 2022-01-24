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
struct tap_queue {int /*<<< orphan*/  tap; } ;
struct tap_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tap_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tap_dev *FUNC3(struct tap_queue *q)
{
	struct tap_dev *tap;

	FUNC0();
	tap = FUNC2(q->tap);
	if (tap)
		FUNC1(tap->dev);

	return tap;
}