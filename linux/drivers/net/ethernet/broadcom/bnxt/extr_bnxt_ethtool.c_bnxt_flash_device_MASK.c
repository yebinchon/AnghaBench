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
struct net_device {int dummy; } ;
struct ethtool_flash {int region; int /*<<< orphan*/  data; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int EINVAL ; 
 int ETHTOOL_FLASH_ALL_REGIONS ; 
 int FUNC1 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			     struct ethtool_flash *flash)
{
	if (!FUNC0((struct bnxt *)FUNC4(dev))) {
		FUNC3(dev, "flashdev not supported from a virtual function\n");
		return -EINVAL;
	}

	if (flash->region == ETHTOOL_FLASH_ALL_REGIONS ||
	    flash->region > 0xffff)
		return FUNC2(dev, flash->data,
						    flash->region);

	return FUNC1(dev, flash->region, flash->data);
}