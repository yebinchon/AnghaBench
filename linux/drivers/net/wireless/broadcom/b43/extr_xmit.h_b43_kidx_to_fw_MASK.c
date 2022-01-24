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
typedef  int u8 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct b43_wldev*) ; 

__attribute__((used)) static inline u8 FUNC1(struct b43_wldev *dev, u8 raw_kidx)
{
	u8 firmware_kidx;
	if (FUNC0(dev)) {
		firmware_kidx = raw_kidx;
	} else {
		if (raw_kidx >= 4)	/* Is per STA key? */
			firmware_kidx = raw_kidx - 4;
		else
			firmware_kidx = raw_kidx;	/* TX default key */
	}
	return firmware_kidx;
}