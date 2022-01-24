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
struct ice_hw {int /*<<< orphan*/  mailboxq; int /*<<< orphan*/  adminq; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int FUNC0 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

enum ice_status FUNC2(struct ice_hw *hw)
{
	FUNC1(&hw->adminq);
	FUNC1(&hw->mailboxq);

	return FUNC0(hw);
}