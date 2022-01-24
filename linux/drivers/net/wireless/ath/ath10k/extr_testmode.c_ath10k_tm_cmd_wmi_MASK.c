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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nlattr {int dummy; } ;
struct ath10k {scalar_t__ state; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_TESTMODE ; 
 scalar_t__ ATH10K_STATE_UTF ; 
 size_t ATH10K_TM_ATTR_DATA ; 
 size_t ATH10K_TM_ATTR_WMI_CMDID ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 int FUNC4 (struct ath10k*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlattr*) ; 

__attribute__((used)) static int FUNC11(struct ath10k *ar, struct nlattr *tb[])
{
	struct sk_buff *skb;
	int ret, buf_len;
	u32 cmd_id;
	void *buf;

	FUNC6(&ar->conf_mutex);

	if (ar->state != ATH10K_STATE_UTF) {
		ret = -ENETDOWN;
		goto out;
	}

	if (!tb[ATH10K_TM_ATTR_DATA]) {
		ret = -EINVAL;
		goto out;
	}

	if (!tb[ATH10K_TM_ATTR_WMI_CMDID]) {
		ret = -EINVAL;
		goto out;
	}

	buf = FUNC8(tb[ATH10K_TM_ATTR_DATA]);
	buf_len = FUNC10(tb[ATH10K_TM_ATTR_DATA]);
	cmd_id = FUNC9(tb[ATH10K_TM_ATTR_WMI_CMDID]);

	FUNC0(ar, ATH10K_DBG_TESTMODE,
		   "testmode cmd wmi cmd_id %d buf %pK buf_len %d\n",
		   cmd_id, buf, buf_len);

	FUNC1(ar, ATH10K_DBG_TESTMODE, NULL, "", buf, buf_len);

	skb = FUNC3(ar, buf_len);
	if (!skb) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC5(skb->data, buf, buf_len);

	ret = FUNC4(ar, skb, cmd_id);
	if (ret) {
		FUNC2(ar, "failed to transmit wmi command (testmode): %d\n",
			    ret);
		goto out;
	}

	ret = 0;

out:
	FUNC7(&ar->conf_mutex);
	return ret;
}