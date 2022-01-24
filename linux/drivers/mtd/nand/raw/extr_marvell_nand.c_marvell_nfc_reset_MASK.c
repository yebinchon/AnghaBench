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
struct marvell_nfc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ NDCR ; 
 int NDCR_ALL_INT ; 
 int NDCR_ND_ARB_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NDCR_SPARE_EN ; 
 scalar_t__ NDECCCTRL ; 
 scalar_t__ NDSR ; 
 int /*<<< orphan*/  NFCV1_READID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct marvell_nfc *nfc)
{
	/*
	 * ECC operations and interruptions are only enabled when specifically
	 * needed. ECC shall not be activated in the early stages (fails probe).
	 * Arbiter flag, even if marked as "reserved", must be set (empirical).
	 * SPARE_EN bit must always be set or ECC bytes will not be at the same
	 * offset in the read page and this will fail the protection.
	 */
	FUNC1(NDCR_ALL_INT | NDCR_ND_ARB_EN | NDCR_SPARE_EN |
		       FUNC0(NFCV1_READID_LEN), nfc->regs + NDCR);
	FUNC1(0xFFFFFFFF, nfc->regs + NDSR);
	FUNC1(0, nfc->regs + NDECCCTRL);
}