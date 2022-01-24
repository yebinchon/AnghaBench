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
struct bfi_ioc_image_hdr {int dummy; } ;
struct bfa_ioc {int /*<<< orphan*/  iocpf; } ;
typedef  enum bfi_fwboot_type { ____Placeholder_bfi_fwboot_type } bfi_fwboot_type ;
typedef  enum bfa_status { ____Placeholder_bfa_status } bfa_status ;

/* Variables and functions */
 int BFA_STATUS_FAILED ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFI_FWBOOT_ENV_OS ; 
 int BFI_FWBOOT_TYPE_FLASH ; 
 int BFI_FWBOOT_TYPE_MEMTEST ; 
 int BFI_FWBOOT_TYPE_NORMAL ; 
 scalar_t__ BFI_IOC_IMG_VER_BETTER ; 
 int /*<<< orphan*/  BFI_IOC_INITING ; 
 int /*<<< orphan*/  BFI_IOC_MEMTEST ; 
 int /*<<< orphan*/  IOCPF_E_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int FUNC3 (struct bfa_ioc*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc*) ; 
 scalar_t__ FUNC7 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_boots ; 

__attribute__((used)) static enum bfa_status
FUNC11(struct bfa_ioc *ioc, enum bfi_fwboot_type boot_type,
		u32 boot_env)
{
	struct bfi_ioc_image_hdr *drv_fwhdr;
	enum bfa_status status;
	FUNC10(ioc, ioc_boots);

	if (FUNC7(ioc) != BFA_STATUS_OK)
		return BFA_STATUS_FAILED;
	if (boot_env == BFI_FWBOOT_ENV_OS &&
	    boot_type == BFI_FWBOOT_TYPE_NORMAL) {
		drv_fwhdr = (struct bfi_ioc_image_hdr *)
			FUNC0(FUNC2(ioc), 0);
		/* Work with Flash iff flash f/w is better than driver f/w.
		 * Otherwise push drivers firmware.
		 */
		if (FUNC4(ioc, drv_fwhdr) ==
			BFI_IOC_IMG_VER_BETTER)
			boot_type = BFI_FWBOOT_TYPE_FLASH;
	}

	/**
	 * Initialize IOC state of all functions on a chip reset.
	 */
	if (boot_type == BFI_FWBOOT_TYPE_MEMTEST) {
		FUNC9(ioc, BFI_IOC_MEMTEST);
		FUNC8(ioc, BFI_IOC_MEMTEST);
	} else {
		FUNC9(ioc, BFI_IOC_INITING);
		FUNC8(ioc, BFI_IOC_INITING);
	}

	FUNC6(ioc);
	status = FUNC3(ioc, boot_type, boot_env);
	if (status == BFA_STATUS_OK)
		FUNC5(ioc);
	else
		FUNC1(&ioc->iocpf, IOCPF_E_TIMEOUT);

	return status;
}