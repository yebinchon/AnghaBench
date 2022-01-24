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
struct qcom_nand_controller {scalar_t__ reg_read_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*,int) ; 

__attribute__((used)) static void FUNC1(struct qcom_nand_controller *nandc)
{
	nandc->reg_read_pos = 0;
	FUNC0(nandc, false);
}