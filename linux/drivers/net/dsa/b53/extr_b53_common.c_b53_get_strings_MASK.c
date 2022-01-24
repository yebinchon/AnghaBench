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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u32 ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_mib_desc {int /*<<< orphan*/  name; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 unsigned int ETH_GSTRING_LEN ; 
 scalar_t__ ETH_SS_PHY_STATS ; 
 scalar_t__ ETH_SS_STATS ; 
 struct b53_mib_desc* FUNC0 (struct b53_device*) ; 
 unsigned int FUNC1 (struct b53_device*) ; 
 struct phy_device* FUNC2 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC5(struct dsa_switch *ds, int port, u32 stringset,
		     uint8_t *data)
{
	struct b53_device *dev = ds->priv;
	const struct b53_mib_desc *mibs = FUNC0(dev);
	unsigned int mib_size = FUNC1(dev);
	struct phy_device *phydev;
	unsigned int i;

	if (stringset == ETH_SS_STATS) {
		for (i = 0; i < mib_size; i++)
			FUNC4(data + i * ETH_GSTRING_LEN,
				mibs[i].name, ETH_GSTRING_LEN);
	} else if (stringset == ETH_SS_PHY_STATS) {
		phydev = FUNC2(ds, port);
		if (!phydev)
			return;

		FUNC3(phydev, data);
	}
}