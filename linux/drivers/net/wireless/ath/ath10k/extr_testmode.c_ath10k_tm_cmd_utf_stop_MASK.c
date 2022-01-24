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
struct nlattr {int dummy; } ;
struct ath10k {scalar_t__ state; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_TESTMODE ; 
 scalar_t__ ATH10K_STATE_UTF ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar, struct nlattr *tb[])
{
	int ret;

	FUNC1(ar, ATH10K_DBG_TESTMODE, "testmode cmd utf stop\n");

	FUNC3(&ar->conf_mutex);

	if (ar->state != ATH10K_STATE_UTF) {
		ret = -ENETDOWN;
		goto out;
	}

	FUNC0(ar);

	ret = 0;

	FUNC2(ar, "UTF firmware stopped\n");

out:
	FUNC4(&ar->conf_mutex);
	return ret;
}