#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct cordic_iq {int i; int q; } ;
struct TYPE_2__ {struct b43_phy_n* n; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_phy_n {scalar_t__ hang_avoid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,size_t,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int* FUNC4 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static int FUNC6(struct b43_wldev *dev,
					struct cordic_iq *samples, u16 len) {
	struct b43_phy_n *nphy = dev->phy.n;
	u16 i;
	u32 *data;

	data = FUNC4(len, sizeof(u32), GFP_KERNEL);
	if (!data) {
		FUNC3(dev->wl, "allocation for samples loading failed\n");
		return -ENOMEM;
	}
	if (nphy->hang_avoid)
		FUNC1(dev, 1);

	for (i = 0; i < len; i++) {
		data[i] = (samples[i].i & 0x3FF << 10);
		data[i] |= samples[i].q & 0x3FF;
	}
	FUNC2(dev, FUNC0(17, 0), len, data);

	FUNC5(data);
	if (nphy->hang_avoid)
		FUNC1(dev, 0);
	return 0;
}