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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_SHM_WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
{
	ssize_t count = 0;
	int i;

	for (i = 0; i < 64; i++) {
		FUNC1("r%d = 0x%04x\n", i,
			FUNC0(dev, B43legacy_SHM_WIRELESS, i));
	}

	return count;
}