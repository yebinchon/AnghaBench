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
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int dummy; } ;
struct cavium_ptp {scalar_t__ reg_base; int /*<<< orphan*/  ptp_clock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cavium_ptp*) ; 
 scalar_t__ PTP_CLOCK_CFG ; 
 int /*<<< orphan*/  PTP_CLOCK_CFG_PTP_EN ; 
 struct cavium_ptp* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct cavium_ptp *clock = FUNC1(pdev);
	u64 clock_cfg;

	if (FUNC0(clock))
		return;

	FUNC2(clock->ptp_clock);

	clock_cfg = FUNC3(clock->reg_base + PTP_CLOCK_CFG);
	clock_cfg &= ~PTP_CLOCK_CFG_PTP_EN;
	FUNC4(clock_cfg, clock->reg_base + PTP_CLOCK_CFG);
}