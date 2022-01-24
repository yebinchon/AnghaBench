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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct elm_info {int /*<<< orphan*/  elm_completion; } ;
struct elm_errorvec {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELM_IRQENABLE ; 
 int /*<<< orphan*/  ELM_IRQSTATUS ; 
 int INTR_EN_PAGE_MASK ; 
 int INTR_STATUS_PAGE_VALID ; 
 struct elm_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct elm_info*,struct elm_errorvec*) ; 
 int /*<<< orphan*/  FUNC2 (struct elm_info*,struct elm_errorvec*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct elm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct elm_info*,struct elm_errorvec*) ; 
 int /*<<< orphan*/  FUNC5 (struct elm_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct device *dev, u8 *ecc_calc,
		struct elm_errorvec *err_vec)
{
	struct elm_info *info = FUNC0(dev);
	u32 reg_val;

	/* Enable page mode interrupt */
	reg_val = FUNC3(info, ELM_IRQSTATUS);
	FUNC5(info, ELM_IRQSTATUS, reg_val & INTR_STATUS_PAGE_VALID);
	FUNC5(info, ELM_IRQENABLE, INTR_EN_PAGE_MASK);

	/* Load valid ecc byte to syndrome fragment register */
	FUNC2(info, err_vec, ecc_calc);

	/* Enable syndrome processing for which syndrome fragment is updated */
	FUNC4(info, err_vec);

	/* Wait for ELM module to finish locating error correction */
	FUNC6(&info->elm_completion);

	/* Disable page mode interrupt */
	reg_val = FUNC3(info, ELM_IRQENABLE);
	FUNC5(info, ELM_IRQENABLE, reg_val & ~INTR_EN_PAGE_MASK);
	FUNC1(info, err_vec);
}