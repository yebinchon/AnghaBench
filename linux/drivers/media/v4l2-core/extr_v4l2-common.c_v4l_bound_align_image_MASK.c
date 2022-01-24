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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

void FUNC3(u32 *w, unsigned int wmin, unsigned int wmax,
			   unsigned int walign,
			   u32 *h, unsigned int hmin, unsigned int hmax,
			   unsigned int halign, unsigned int salign)
{
	*w = FUNC2(*w, wmin, wmax, walign);
	*h = FUNC2(*h, hmin, hmax, halign);

	/* Usually we don't need to align the size and are done now. */
	if (!salign)
		return;

	/* How much alignment do we have? */
	walign = FUNC0(*w);
	halign = FUNC0(*h);
	/* Enough to satisfy the image alignment? */
	if (walign + halign < salign) {
		/* Max walign where there is still a valid width */
		unsigned int wmaxa = FUNC1(wmax ^ (wmin - 1));
		/* Max halign where there is still a valid height */
		unsigned int hmaxa = FUNC1(hmax ^ (hmin - 1));

		/* up the smaller alignment until we have enough */
		do {
			if (halign >= hmaxa ||
			    (walign <= halign && walign < wmaxa)) {
				*w = FUNC2(*w, wmin, wmax, walign + 1);
				walign = FUNC0(*w);
			} else {
				*h = FUNC2(*h, hmin, hmax, halign + 1);
				halign = FUNC0(*h);
			}
		} while (halign + walign < salign);
	}
}