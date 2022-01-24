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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct nfp_app_bpf {int /*<<< orphan*/  ccm; } ;
struct nfp_app {struct nfp_app_bpf* priv; } ;
struct cmsg_reply_map_simple {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFP_CCM_TYPE_BPF_BPF_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_app_bpf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app_bpf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct nfp_app *app, struct sk_buff *skb)
{
	struct nfp_app_bpf *bpf = app->priv;

	if (FUNC6(skb->len < sizeof(struct cmsg_reply_map_simple))) {
		FUNC0(bpf, "cmsg drop - too short %d!\n", skb->len);
		FUNC2(skb);
		return;
	}

	if (FUNC4(skb) == NFP_CCM_TYPE_BPF_BPF_EVENT) {
		if (!FUNC3(bpf, skb->data, skb->len))
			FUNC1(skb);
		else
			FUNC2(skb);
	}

	FUNC5(&bpf->ccm, skb);
}