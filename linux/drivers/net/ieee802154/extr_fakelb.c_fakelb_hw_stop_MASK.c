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
struct ieee802154_hw {struct fakelb_phy* priv; } ;
struct fakelb_phy {int suspended; int /*<<< orphan*/  list_ifup; } ;

/* Variables and functions */
 int /*<<< orphan*/  fakelb_ifup_phys_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ieee802154_hw *hw)
{
	struct fakelb_phy *phy = hw->priv;

	FUNC1(&fakelb_ifup_phys_lock);
	phy->suspended = true;
	FUNC0(&phy->list_ifup);
	FUNC2(&fakelb_ifup_phys_lock);
}