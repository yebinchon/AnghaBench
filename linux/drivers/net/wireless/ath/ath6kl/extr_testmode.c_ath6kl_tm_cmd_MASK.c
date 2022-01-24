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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct nlattr {int dummy; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 size_t ATH6KL_TM_ATTR_CMD ; 
 size_t ATH6KL_TM_ATTR_DATA ; 
 int /*<<< orphan*/  ATH6KL_TM_ATTR_MAX ; 
#define  ATH6KL_TM_CMD_RX_REPORT 129 
#define  ATH6KL_TM_CMD_TCMD 128 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ath6kl_tm_policy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ath6kl* FUNC5 (struct wiphy*) ; 

int FUNC6(struct wiphy *wiphy, struct wireless_dev *wdev,
		  void *data, int len)
{
	struct ath6kl *ar = FUNC5(wiphy);
	struct nlattr *tb[ATH6KL_TM_ATTR_MAX + 1];
	int err, buf_len;
	void *buf;

	err = FUNC4(tb, ATH6KL_TM_ATTR_MAX, data, len,
				   ath6kl_tm_policy, NULL);
	if (err)
		return err;

	if (!tb[ATH6KL_TM_ATTR_CMD])
		return -EINVAL;

	switch (FUNC2(tb[ATH6KL_TM_ATTR_CMD])) {
	case ATH6KL_TM_CMD_TCMD:
		if (!tb[ATH6KL_TM_ATTR_DATA])
			return -EINVAL;

		buf = FUNC1(tb[ATH6KL_TM_ATTR_DATA]);
		buf_len = FUNC3(tb[ATH6KL_TM_ATTR_DATA]);

		FUNC0(ar->wmi, buf, buf_len);

		return 0;

		break;
	case ATH6KL_TM_CMD_RX_REPORT:
	default:
		return -EOPNOTSUPP;
	}
}