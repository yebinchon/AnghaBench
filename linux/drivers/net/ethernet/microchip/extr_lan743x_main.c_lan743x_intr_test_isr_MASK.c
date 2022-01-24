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
struct lan743x_intr {scalar_t__ software_isr_flag; } ;
struct lan743x_adapter {struct lan743x_intr intr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  INT_BIT_SW_GP_ ; 
 int /*<<< orphan*/  INT_EN_CLR ; 
 int /*<<< orphan*/  INT_EN_SET ; 
 int /*<<< orphan*/  INT_SET ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct lan743x_adapter *adapter)
{
	struct lan743x_intr *intr = &adapter->intr;
	int result = -ENODEV;
	int timeout = 10;

	intr->software_isr_flag = 0;

	/* enable interrupt */
	FUNC0(adapter, INT_EN_SET, INT_BIT_SW_GP_);

	/* activate interrupt here */
	FUNC0(adapter, INT_SET, INT_BIT_SW_GP_);
	while ((timeout > 0) && (!(intr->software_isr_flag))) {
		FUNC1(1000, 20000);
		timeout--;
	}

	if (intr->software_isr_flag)
		result = 0;

	/* disable interrupts */
	FUNC0(adapter, INT_EN_CLR, INT_BIT_SW_GP_);
	return result;
}