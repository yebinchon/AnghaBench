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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k_sdio_bus_request {size_t eid; scalar_t__ comp; scalar_t__ htc_msg; int /*<<< orphan*/  address; struct sk_buff* skb; } ;
struct ath10k_htc_ep {int dummy; } ;
struct TYPE_2__ {struct ath10k_htc_ep* endpoint; } ;
struct ath10k {TYPE_1__ htc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k_htc_ep*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,struct ath10k_sdio_bus_request*) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar,
				      struct ath10k_sdio_bus_request *req)
{
	struct ath10k_htc_ep *ep;
	struct sk_buff *skb;
	int ret;

	skb = req->skb;
	ret = FUNC2(ar, req->address, skb->data, skb->len);
	if (ret)
		FUNC3(ar, "failed to write skb to 0x%x asynchronously: %d",
			    req->address, ret);

	if (req->htc_msg) {
		ep = &ar->htc.endpoint[req->eid];
		FUNC0(ep, skb);
	} else if (req->comp) {
		FUNC4(req->comp);
	}

	FUNC1(ar, req);
}