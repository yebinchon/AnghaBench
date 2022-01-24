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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_merge_hint {int count; TYPE_1__* flow; } ;
struct nfp_fl_payload {int dummy; } ;
struct nfp_app {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flow ; 
 struct nfp_flower_cmsg_merge_hint* FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*,char*,...) ; 
 struct nfp_fl_payload* FUNC4 (struct nfp_app*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfp_app*,struct nfp_fl_payload*,struct nfp_fl_payload*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned int FUNC8 (struct nfp_flower_cmsg_merge_hint*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct nfp_app *app, struct sk_buff *skb)
{
	unsigned int msg_len = FUNC2(skb);
	struct nfp_flower_cmsg_merge_hint *msg;
	struct nfp_fl_payload *sub_flows[2];
	int err, i, flow_cnt;

	msg = FUNC1(skb);
	/* msg->count starts at 0 and always assumes at least 1 entry. */
	flow_cnt = msg->count + 1;

	if (msg_len < FUNC8(msg, flow, flow_cnt)) {
		FUNC3(app, "Merge hint ctrl msg too short - %d bytes but expect %zd\n",
				     msg_len, FUNC8(msg, flow, flow_cnt));
		return;
	}

	if (flow_cnt != 2) {
		FUNC3(app, "Merge hint contains %d flows - two are expected\n",
				     flow_cnt);
		return;
	}

	FUNC6();
	for (i = 0; i < flow_cnt; i++) {
		u32 ctx = FUNC0(msg->flow[i].host_ctx);

		sub_flows[i] = FUNC4(app, ctx);
		if (!sub_flows[i]) {
			FUNC3(app, "Invalid flow in merge hint\n");
			goto err_rtnl_unlock;
		}
	}

	err = FUNC5(app, sub_flows[0], sub_flows[1]);
	/* Only warn on memory fail. Hint veto will not break functionality. */
	if (err == -ENOMEM)
		FUNC3(app, "Flow merge memory fail.\n");

err_rtnl_unlock:
	FUNC7();
}