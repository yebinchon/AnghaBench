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
struct bfi_ioc_ctrl_req {int /*<<< orphan*/  tv_sec; void* rsvd; void* clscode; int /*<<< orphan*/  mh; } ;
struct bfa_ioc {int /*<<< orphan*/  clscode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_H2I_ENABLE_REQ ; 
 int /*<<< orphan*/  BFI_MC_IOC ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,struct bfi_ioc_ctrl_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioc *ioc)
{
	struct bfi_ioc_ctrl_req enable_req;

	FUNC2(enable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_ENABLE_REQ,
		    FUNC1(ioc));
	enable_req.clscode = FUNC3(ioc->clscode);
	enable_req.rsvd = FUNC3(0);
	/* overflow in 2106 */
	enable_req.tv_sec = FUNC5(FUNC4());
	FUNC0(ioc, &enable_req, sizeof(struct bfi_ioc_ctrl_req));
}