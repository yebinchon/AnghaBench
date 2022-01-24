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
typedef  int u32 ;
struct tg3 {int pci_fn; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5717 ; 
 scalar_t__ ASIC_REV_5719 ; 
 int /*<<< orphan*/  TG3_APE_GPIO_MSG ; 
 int TG3_APE_GPIO_MSG_SHIFT ; 
 int /*<<< orphan*/  TG3_CPMU_DRV_STATUS ; 
 int TG3_GPIO_MSG_MASK ; 
 int FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline u32 FUNC5(struct tg3 *tp, u32 newstat)
{
	u32 status, shift;

	if (FUNC2(tp) == ASIC_REV_5717 ||
	    FUNC2(tp) == ASIC_REV_5719)
		status = FUNC0(tp, TG3_APE_GPIO_MSG);
	else
		status = FUNC3(TG3_CPMU_DRV_STATUS);

	shift = TG3_APE_GPIO_MSG_SHIFT + 4 * tp->pci_fn;
	status &= ~(TG3_GPIO_MSG_MASK << shift);
	status |= (newstat << shift);

	if (FUNC2(tp) == ASIC_REV_5717 ||
	    FUNC2(tp) == ASIC_REV_5719)
		FUNC1(tp, TG3_APE_GPIO_MSG, status);
	else
		FUNC4(TG3_CPMU_DRV_STATUS, status);

	return status >> TG3_APE_GPIO_MSG_SHIFT;
}