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
typedef  int /*<<< orphan*/  u8 ;
struct b43_wldev {int /*<<< orphan*/  wl; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

u8 *FUNC4(struct b43_wldev *dev,
				  s16 pab0, s16 pab1, s16 pab2)
{
	unsigned int i;
	u8 *tab;
	int err;

	tab = FUNC3(64, GFP_KERNEL);
	if (!tab) {
		FUNC1(dev->wl, "Could not allocate memory "
		       "for tssi2dbm table\n");
		return NULL;
	}
	for (i = 0; i < 64; i++) {
		err = FUNC0(tab, i, pab0, pab1, pab2);
		if (err) {
			FUNC1(dev->wl, "Could not generate "
			       "tssi2dBm table\n");
			FUNC2(tab);
			return NULL;
		}
	}

	return tab;
}