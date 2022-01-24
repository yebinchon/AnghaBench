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
struct airspy {int urbs_initialized; scalar_t__* urb_list; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct airspy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct airspy *s)
{
	int i;

	FUNC0(s);

	for (i = s->urbs_initialized - 1; i >= 0; i--) {
		if (s->urb_list[i]) {
			FUNC1(s->dev, "free urb=%d\n", i);
			/* free the URBs */
			FUNC2(s->urb_list[i]);
		}
	}
	s->urbs_initialized = 0;

	return 0;
}