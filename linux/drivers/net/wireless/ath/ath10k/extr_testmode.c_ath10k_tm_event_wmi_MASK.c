#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  utf_monitor; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_2__* hw; TYPE_1__ testmode; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_TESTMODE ; 
 int /*<<< orphan*/  ATH10K_TM_ATTR_CMD ; 
 int /*<<< orphan*/  ATH10K_TM_ATTR_DATA ; 
 int /*<<< orphan*/  ATH10K_TM_ATTR_WMI_CMDID ; 
 int /*<<< orphan*/  ATH10K_TM_CMD_WMI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

bool FUNC10(struct ath10k *ar, u32 cmd_id, struct sk_buff *skb)
{
	struct sk_buff *nl_skb;
	bool consumed;
	int ret;

	FUNC0(ar, ATH10K_DBG_TESTMODE,
		   "testmode event wmi cmd_id %d skb %pK skb->len %d\n",
		   cmd_id, skb, skb->len);

	FUNC1(ar, ATH10K_DBG_TESTMODE, NULL, "", skb->data, skb->len);

	FUNC8(&ar->data_lock);

	if (!ar->testmode.utf_monitor) {
		consumed = false;
		goto out;
	}

	/* Only testmode.c should be handling events from utf firmware,
	 * otherwise all sort of problems will arise as mac80211 operations
	 * are not initialised.
	 */
	consumed = true;

	nl_skb = FUNC3(ar->hw->wiphy,
						   2 * sizeof(u32) + skb->len,
						   GFP_ATOMIC);
	if (!nl_skb) {
		FUNC2(ar,
			    "failed to allocate skb for testmode wmi event\n");
		goto out;
	}

	ret = FUNC7(nl_skb, ATH10K_TM_ATTR_CMD, ATH10K_TM_CMD_WMI);
	if (ret) {
		FUNC2(ar,
			    "failed to to put testmode wmi event cmd attribute: %d\n",
			    ret);
		FUNC5(nl_skb);
		goto out;
	}

	ret = FUNC7(nl_skb, ATH10K_TM_ATTR_WMI_CMDID, cmd_id);
	if (ret) {
		FUNC2(ar,
			    "failed to to put testmode wmi even cmd_id: %d\n",
			    ret);
		FUNC5(nl_skb);
		goto out;
	}

	ret = FUNC6(nl_skb, ATH10K_TM_ATTR_DATA, skb->len, skb->data);
	if (ret) {
		FUNC2(ar,
			    "failed to copy skb to testmode wmi event: %d\n",
			    ret);
		FUNC5(nl_skb);
		goto out;
	}

	FUNC4(nl_skb, GFP_ATOMIC);

out:
	FUNC9(&ar->data_lock);

	return consumed;
}