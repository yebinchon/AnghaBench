#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bfi_ioc_image_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_usage_sem_reg; int /*<<< orphan*/  ioc_usage_reg; int /*<<< orphan*/  ioc_fwstate; int /*<<< orphan*/  ioc_fail_sync; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;
typedef  enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;

/* Variables and functions */
 scalar_t__ BFA_IOC_FWIMG_MINSZ ; 
 int BFI_IOC_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9(struct bfa_ioc *ioc)
{
	enum bfi_ioc_state ioc_fwstate;
	u32 usecnt;
	struct bfi_ioc_image_hdr fwhdr;

	/**
	 * If bios boot (flash based) -- do not increment usage count
	 */
	if (FUNC1(FUNC2(ioc)) <
						BFA_IOC_FWIMG_MINSZ)
		return true;

	FUNC5(ioc->ioc_regs.ioc_usage_sem_reg);
	usecnt = FUNC7(ioc->ioc_regs.ioc_usage_reg);

	/**
	 * If usage count is 0, always return TRUE.
	 */
	if (usecnt == 0) {
		FUNC8(1, ioc->ioc_regs.ioc_usage_reg);
		FUNC6(ioc->ioc_regs.ioc_usage_sem_reg);
		FUNC8(0, ioc->ioc_regs.ioc_fail_sync);
		return true;
	}

	ioc_fwstate = FUNC7(ioc->ioc_regs.ioc_fwstate);

	/**
	 * Use count cannot be non-zero and chip in uninitialized state.
	 */
	FUNC0(!(ioc_fwstate != BFI_IOC_UNINIT));

	/**
	 * Check if another driver with a different firmware is active
	 */
	FUNC4(ioc, &fwhdr);
	if (!FUNC3(ioc, &fwhdr)) {
		FUNC6(ioc->ioc_regs.ioc_usage_sem_reg);
		return false;
	}

	/**
	 * Same firmware version. Increment the reference count.
	 */
	usecnt++;
	FUNC8(usecnt, ioc->ioc_regs.ioc_usage_reg);
	FUNC6(ioc->ioc_regs.ioc_usage_sem_reg);
	return true;
}