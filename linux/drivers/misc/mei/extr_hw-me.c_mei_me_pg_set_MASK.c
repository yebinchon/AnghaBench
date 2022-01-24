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
typedef  int /*<<< orphan*/  u32 ;
struct mei_me_hw {int dummy; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_HPG_CSR ; 
 int /*<<< orphan*/  H_HPG_CSR_PGI ; 
 int /*<<< orphan*/  FUNC0 (struct mei_me_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_me_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mei_me_hw* FUNC2 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mei_device *dev)
{
	struct mei_me_hw *hw = FUNC2(dev);
	u32 reg;

	reg = FUNC0(hw, H_HPG_CSR);
	FUNC3(dev->dev, "H_HPG_CSR", H_HPG_CSR, reg);

	reg |= H_HPG_CSR_PGI;

	FUNC4(dev->dev, "H_HPG_CSR", H_HPG_CSR, reg);
	FUNC1(hw, H_HPG_CSR, reg);
}