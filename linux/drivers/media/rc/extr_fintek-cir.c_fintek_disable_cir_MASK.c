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
struct fintek_dev {int /*<<< orphan*/  logical_dev_cir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CR_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fintek_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fintek_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fintek_dev *fintek)
{
	FUNC1(fintek);

	/* disable the CIR logical device */
	FUNC3(fintek, fintek->logical_dev_cir);
	FUNC2(fintek, LOGICAL_DEV_DISABLE, CIR_CR_DEV_EN);

	FUNC0(fintek);
}