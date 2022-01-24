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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ENODEV ; 
 scalar_t__ FUNC2 (struct regmap*) ; 
 int FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 struct regmap* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, u16 offset,
				       int slave, u8 *mac_addr)
{
	u32 macid_lsb;
	u32 macid_msb;
	struct regmap *syscon;

	syscon = FUNC5(dev->of_node, "syscon");
	if (FUNC2(syscon)) {
		if (FUNC3(syscon) == -ENODEV)
			return 0;
		return FUNC3(syscon);
	}

	FUNC4(syscon, FUNC1(offset, slave), &macid_lsb);
	FUNC4(syscon, FUNC0(offset, slave), &macid_msb);

	mac_addr[0] = (macid_msb >> 16) & 0xff;
	mac_addr[1] = (macid_msb >> 8)  & 0xff;
	mac_addr[2] = macid_msb & 0xff;
	mac_addr[3] = (macid_lsb >> 16) & 0xff;
	mac_addr[4] = (macid_lsb >> 8)  & 0xff;
	mac_addr[5] = macid_lsb & 0xff;

	return 0;
}