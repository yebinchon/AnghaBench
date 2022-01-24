#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_credits_wq; } ;
struct ath10k {int /*<<< orphan*/  restart_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  dev_flags; TYPE_1__ wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FLAG_CRASH_FLUSH ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int ESHUTDOWN ; 
 int HZ ; 
 scalar_t__ WMI_CMD_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,scalar_t__) ; 
 int FUNC1 (struct ath10k*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct ath10k *ar, struct sk_buff *skb, u32 cmd_id)
{
	int ret = -EOPNOTSUPP;

	FUNC4();

	if (cmd_id == WMI_CMD_UNSUPPORTED) {
		FUNC0(ar, "wmi command %d is not supported by firmware\n",
			    cmd_id);
		return ret;
	}

	FUNC7(ar->wmi.tx_credits_wq, ({
		/* try to send pending beacons first. they take priority */
		FUNC2(ar);

		ret = FUNC1(ar, skb, cmd_id);

		if (ret && FUNC6(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags))
			ret = -ESHUTDOWN;

		(ret != -EAGAIN);
	}), 3 * HZ);

	if (ret)
		FUNC3(skb);

	if (ret == -EAGAIN) {
		FUNC0(ar, "wmi command %d timeout, restarting hardware\n",
			    cmd_id);
		FUNC5(ar->workqueue, &ar->restart_work);
	}

	return ret;
}