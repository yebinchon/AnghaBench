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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	int ret;

	FUNC0(ar, ATH10K_DBG_SNOC, "soc power on\n");

	ret = FUNC3(ar);
	if (ret)
		return ret;

	ret = FUNC1(ar);
	if (ret)
		goto vreg_off;

	return ret;

vreg_off:
	FUNC2(ar);
	return ret;
}