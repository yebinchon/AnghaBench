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
typedef  int u16 ;
struct b53_device {int chip_id; int core_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_DEVICE_ID ; 
 int /*<<< orphan*/  B53_MGMT_PAGE ; 
 int /*<<< orphan*/  B53_REV_ID ; 
 int /*<<< orphan*/  B53_REV_ID_25 ; 
 int /*<<< orphan*/  B53_STAT_PAGE ; 
 int /*<<< orphan*/  B53_VLAN_PAGE ; 
 int /*<<< orphan*/  B53_VLAN_TABLE_ACCESS_25 ; 
#define  BCM53010_DEVICE_ID 139 
#define  BCM53011_DEVICE_ID 138 
#define  BCM53012_DEVICE_ID 137 
#define  BCM53018_DEVICE_ID 136 
#define  BCM53019_DEVICE_ID 135 
#define  BCM53115_DEVICE_ID 134 
#define  BCM53125_DEVICE_ID 133 
#define  BCM53128_DEVICE_ID 132 
 scalar_t__ BCM5325_DEVICE_ID ; 
 int BCM5365_DEVICE_ID ; 
#define  BCM5389_DEVICE_ID 131 
#define  BCM5395_DEVICE_ID 130 
#define  BCM5397_DEVICE_ID 129 
#define  BCM5398_DEVICE_ID 128 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

int FUNC5(struct b53_device *dev)
{
	u32 id32;
	u16 tmp;
	u8 id8;
	int ret;

	ret = FUNC2(dev, B53_MGMT_PAGE, B53_DEVICE_ID, &id8);
	if (ret)
		return ret;

	switch (id8) {
	case 0:
		/* BCM5325 and BCM5365 do not have this register so reads
		 * return 0. But the read operation did succeed, so assume this
		 * is one of them.
		 *
		 * Next check if we can write to the 5325's VTA register; for
		 * 5365 it is read only.
		 */
		FUNC3(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_25, 0xf);
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_25, &tmp);

		if (tmp == 0xf)
			dev->chip_id = BCM5325_DEVICE_ID;
		else
			dev->chip_id = BCM5365_DEVICE_ID;
		break;
	case BCM5389_DEVICE_ID:
	case BCM5395_DEVICE_ID:
	case BCM5397_DEVICE_ID:
	case BCM5398_DEVICE_ID:
		dev->chip_id = id8;
		break;
	default:
		ret = FUNC1(dev, B53_MGMT_PAGE, B53_DEVICE_ID, &id32);
		if (ret)
			return ret;

		switch (id32) {
		case BCM53115_DEVICE_ID:
		case BCM53125_DEVICE_ID:
		case BCM53128_DEVICE_ID:
		case BCM53010_DEVICE_ID:
		case BCM53011_DEVICE_ID:
		case BCM53012_DEVICE_ID:
		case BCM53018_DEVICE_ID:
		case BCM53019_DEVICE_ID:
			dev->chip_id = id32;
			break;
		default:
			FUNC4("unsupported switch detected (BCM53%02x/BCM%x)\n",
			       id8, id32);
			return -ENODEV;
		}
	}

	if (dev->chip_id == BCM5325_DEVICE_ID)
		return FUNC2(dev, B53_STAT_PAGE, B53_REV_ID_25,
				 &dev->core_rev);
	else
		return FUNC2(dev, B53_MGMT_PAGE, B53_REV_ID,
				 &dev->core_rev);
}