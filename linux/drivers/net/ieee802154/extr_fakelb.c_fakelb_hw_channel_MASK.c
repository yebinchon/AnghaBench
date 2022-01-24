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
typedef  void* u8 ;
struct ieee802154_hw {struct fakelb_phy* priv; } ;
struct fakelb_phy {void* channel; void* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  fakelb_ifup_phys_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ieee802154_hw *hw, u8 page, u8 channel)
{
	struct fakelb_phy *phy = hw->priv;

	FUNC0(&fakelb_ifup_phys_lock);
	phy->page = page;
	phy->channel = channel;
	FUNC1(&fakelb_ifup_phys_lock);
	return 0;
}