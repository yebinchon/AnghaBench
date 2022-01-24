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
struct ath6kl {int /*<<< orphan*/  fw_testscript; int /*<<< orphan*/  fw_patch; int /*<<< orphan*/  fw; int /*<<< orphan*/  fw_otp; int /*<<< orphan*/  fw_board; scalar_t__ htc_target; int /*<<< orphan*/  ath6kl_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct ath6kl *ar)
{
	FUNC5(ar);

	FUNC7(ar);

	FUNC8(ar->ath6kl_wq);

	if (ar->htc_target)
		FUNC6(ar->htc_target);

	FUNC3(ar);

	FUNC2(ar);

	FUNC0(ar);

	FUNC4(ar);

	FUNC9(ar->fw_board);
	FUNC9(ar->fw_otp);
	FUNC10(ar->fw);
	FUNC9(ar->fw_patch);
	FUNC9(ar->fw_testscript);

	FUNC1(ar);
}