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
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int) ; 
 int FUNC3 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 

void FUNC6(struct brcms_phy *pi, int channel)
{
	u16 afectrlovr, afectrlovrval;
	afectrlovr = FUNC3(pi, 0x43b);
	afectrlovrval = FUNC3(pi, 0x43c);
	if (channel != 0) {
		FUNC1(pi, 0x43b, (0x1 << 1), (1) << 1);

		FUNC1(pi, 0x43c, (0x1 << 1), (0) << 1);

		FUNC1(pi, 0x43b, (0x1 << 4), (1) << 4);

		FUNC1(pi, 0x43c, (0x1 << 6), (0) << 6);

		FUNC5(pi, 0x44b, 0xffff);
		FUNC4(pi, 1);

		FUNC1(pi, 0x634, (0xff << 8), (0) << 8);

		FUNC2(pi, 0x6da, 0x0080);

		FUNC2(pi, 0x00a, 0x228);
	} else {
		FUNC0(pi, 0x00a, ~(0x228));

		FUNC0(pi, 0x6da, 0xFF7F);
		FUNC5(pi, 0x43b, afectrlovr);
		FUNC5(pi, 0x43c, afectrlovrval);
	}
}