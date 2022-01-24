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
struct pvr2_ioread {int /*<<< orphan*/  mutex; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pvr2_ioread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_ioread*) ; 

int FUNC4(struct pvr2_ioread *cp,int fl)
{
	int ret = 0;
	if ((!fl) == (!(cp->enabled))) return ret;

	FUNC0(&cp->mutex);
	do {
		if (fl) {
			ret = FUNC2(cp);
		} else {
			FUNC3(cp);
		}
	} while (0);
	FUNC1(&cp->mutex);
	return ret;
}