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
typedef  int u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct b43legacy_wldev *dev,
					u16 rate,
					int is_ofdm)
{
	u16 offset;

	if (is_ofdm) {
		offset = 0x480;
		offset += (FUNC1(rate) & 0x000F) * 2;
	} else {
		offset = 0x4C0;
		offset += (FUNC0(rate) & 0x000F) * 2;
	}
	FUNC3(dev, B43legacy_SHM_SHARED, offset + 0x20,
			      FUNC2(dev,
			      B43legacy_SHM_SHARED, offset));
}