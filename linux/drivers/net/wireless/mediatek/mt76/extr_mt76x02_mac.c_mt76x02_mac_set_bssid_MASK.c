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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT_MAC_APC_BSSID_H_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct mt76x02_dev *dev, u8 idx, const u8 *addr)
{
	idx &= 7;
	FUNC5(dev, FUNC1(idx), FUNC3(addr));
	FUNC4(dev, FUNC0(idx), MT_MAC_APC_BSSID_H_ADDR,
		       FUNC2(addr + 4));
}