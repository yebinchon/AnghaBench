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
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HHIER_REG ; 
 int /*<<< orphan*/  HIER_REG ; 
 int /*<<< orphan*/  FUNC0 (struct mei_txe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_txe_hw* FUNC1 (struct mei_device*) ; 

__attribute__((used)) static void FUNC2(struct mei_device *dev)
{
	struct mei_txe_hw *hw = FUNC1(dev);

	FUNC0(hw, HHIER_REG, 0);
	FUNC0(hw, HIER_REG, 0);
}