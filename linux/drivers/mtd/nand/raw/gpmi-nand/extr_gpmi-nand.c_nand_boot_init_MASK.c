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
struct gpmi_nand_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gpmi_nand_data*) ; 
 int FUNC1 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpmi_nand_data*) ; 

__attribute__((used)) static int FUNC3(struct gpmi_nand_data  *this)
{
	FUNC2(this);

	/* This is ROM arch-specific initilization before the BBT scanning. */
	if (FUNC0(this))
		return FUNC1(this);
	return 0;
}