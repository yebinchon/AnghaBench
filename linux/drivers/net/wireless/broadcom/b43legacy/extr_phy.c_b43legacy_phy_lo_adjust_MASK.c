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
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_lopair {int dummy; } ;

/* Variables and functions */
 struct b43legacy_lopair* FUNC0 (struct b43legacy_wldev*) ; 
 struct b43legacy_lopair* FUNC1 (struct b43legacy_wldev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,struct b43legacy_lopair*) ; 

void FUNC3(struct b43legacy_wldev *dev, int fixed)
{
	struct b43legacy_lopair *pair;

	if (fixed) {
		/* Use fixed values. Only for initialization. */
		pair = FUNC1(dev, 2, 3, 0);
	} else
		pair = FUNC0(dev);
	FUNC2(dev, pair);
}