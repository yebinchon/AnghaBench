#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  share; } ;
struct fjes_hw {TYPE_1__ hw_info; } ;
typedef  enum ep_partner_status { ____Placeholder_ep_partner_status } ep_partner_status ;

/* Variables and functions */
 int EP_PARTNER_COMPLETE ; 
 int EP_PARTNER_SHARED ; 
 int EP_PARTNER_UNSHARE ; 
 int EP_PARTNER_WAITING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct fjes_hw*,int) ; 
 scalar_t__ FUNC2 (struct fjes_hw*,int) ; 

enum ep_partner_status
FUNC3(struct fjes_hw *hw, int epid)
{
	enum ep_partner_status status;

	if (FUNC0(hw->hw_info.share, epid)) {
		if (FUNC2(hw, epid)) {
			status = EP_PARTNER_WAITING;
		} else {
			if (FUNC1(hw, epid))
				status = EP_PARTNER_COMPLETE;
			else
				status = EP_PARTNER_SHARED;
		}
	} else {
		status = EP_PARTNER_UNSHARE;
	}

	return status;
}