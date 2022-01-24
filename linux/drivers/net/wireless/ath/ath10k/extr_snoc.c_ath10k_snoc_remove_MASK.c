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
struct platform_device {int dummy; } ;
struct ath10k_snoc {int /*<<< orphan*/  flags; } ;
struct ath10k {int /*<<< orphan*/  driver_recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  ATH10K_SNOC_FLAG_RECOVERY ; 
 int /*<<< orphan*/  ATH10K_SNOC_FLAG_UNREGISTERING ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 struct ath10k_snoc* FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 struct ath10k* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct ath10k *ar = FUNC8(pdev);
	struct ath10k_snoc *ar_snoc = FUNC6(ar);

	FUNC2(ar, ATH10K_DBG_SNOC, "snoc remove\n");

	FUNC9(&ar->driver_recovery);

	if (FUNC11(ATH10K_SNOC_FLAG_RECOVERY, &ar_snoc->flags))
		FUNC12(&ar->driver_recovery, 3 * HZ);

	FUNC10(ATH10K_SNOC_FLAG_UNREGISTERING, &ar_snoc->flags);

	FUNC1(ar);
	FUNC3(ar);
	FUNC5(ar);
	FUNC7(ar);
	FUNC4(ar);
	FUNC0(ar);

	return 0;
}