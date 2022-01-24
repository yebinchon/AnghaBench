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
struct iavf_hw {int dummy; } ;
typedef  enum iavf_status { ____Placeholder_iavf_status } iavf_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iavf_hw*,int) ; 
 scalar_t__ FUNC1 (struct iavf_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_hw*) ; 

enum iavf_status FUNC4(struct iavf_hw *hw)
{
	enum iavf_status ret_code = 0;

	if (FUNC1(hw))
		FUNC0(hw, true);

	FUNC3(hw);
	FUNC2(hw);

	return ret_code;
}