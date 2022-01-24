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
struct airspy {int urbs_initialized; int /*<<< orphan*/  urbs_submitted; int /*<<< orphan*/  dev; int /*<<< orphan*/ * urb_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct airspy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct airspy *s)
{
	int i, ret;

	for (i = 0; i < s->urbs_initialized; i++) {
		FUNC1(s->dev, "submit urb=%d\n", i);
		ret = FUNC3(s->urb_list[i], GFP_ATOMIC);
		if (ret) {
			FUNC2(s->dev, "Could not submit URB no. %d - get them all back\n",
					i);
			FUNC0(s);
			return ret;
		}
		s->urbs_submitted++;
	}

	return 0;
}