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
typedef  int /*<<< orphan*/  u64 ;
struct phy_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int) ; 
 int /*<<< orphan*/  kszphy_hw_stats ; 

__attribute__((used)) static void FUNC2(struct phy_device *phydev,
			     struct ethtool_stats *stats, u64 *data)
{
	int i;

	for (i = 0; i < FUNC0(kszphy_hw_stats); i++)
		data[i] = FUNC1(phydev, i);
}