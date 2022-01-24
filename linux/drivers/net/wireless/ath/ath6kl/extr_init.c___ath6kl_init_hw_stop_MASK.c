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
struct ath6kl {int /*<<< orphan*/  htc_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct ath6kl *ar)
{
	int ret;

	FUNC1(ATH6KL_DBG_BOOT, "hw stop\n");

	FUNC4(ar->htc_target);

	FUNC3(ar);

	FUNC0(ar);

	ret = FUNC2(ar);
	if (ret)
		FUNC5("failed to power off hif: %d\n", ret);

	return 0;
}