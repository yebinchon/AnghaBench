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
struct ath10k_ahb {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_AHB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 struct ath10k_ahb* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*) ; 
 struct ath10k* FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct ath10k *ar = FUNC10(pdev);
	struct ath10k_ahb *ar_ahb;

	if (!ar)
		return -EINVAL;

	ar_ahb = FUNC3(ar);

	if (!ar_ahb)
		return -EINVAL;

	FUNC8(ar, ATH10K_DBG_AHB, "ahb remove\n");

	FUNC7(ar);
	FUNC2(ar);
	FUNC4(ar);
	FUNC9(ar);
	FUNC1(ar);
	FUNC0(ar);
	FUNC5(ar);
	FUNC6(ar);

	FUNC11(pdev, NULL);

	return 0;
}