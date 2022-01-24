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
typedef  int /*<<< orphan*/  u16 ;
struct atl1c_adapter {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ISR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct atl1c_adapter *adapter)
{
	u16 phy_data;

	FUNC1(&adapter->mdio_lock);
	FUNC0(&adapter->hw, MII_ISR, &phy_data);
	FUNC2(&adapter->mdio_lock);
}