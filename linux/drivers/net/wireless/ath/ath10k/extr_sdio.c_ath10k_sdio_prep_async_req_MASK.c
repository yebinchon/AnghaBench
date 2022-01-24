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
struct sk_buff {int dummy; } ;
struct completion {int dummy; } ;
struct ath10k_sdio_bus_request {int eid; int htc_msg; int /*<<< orphan*/  list; struct completion* comp; int /*<<< orphan*/  address; struct sk_buff* skb; } ;
struct ath10k_sdio {int /*<<< orphan*/  wr_async_lock; int /*<<< orphan*/  wr_asyncq; } ;
struct ath10k {int dummy; } ;
typedef  enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;

/* Variables and functions */
 int ENOMEM ; 
 struct ath10k_sdio_bus_request* FUNC0 (struct ath10k*) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, u32 addr,
				      struct sk_buff *skb,
				      struct completion *comp,
				      bool htc_msg, enum ath10k_htc_ep_id eid)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	struct ath10k_sdio_bus_request *bus_req;

	/* Allocate a bus request for the message and queue it on the
	 * SDIO workqueue.
	 */
	bus_req = FUNC0(ar);
	if (!bus_req) {
		FUNC2(ar,
			    "unable to allocate bus request for async request\n");
		return -ENOMEM;
	}

	bus_req->skb = skb;
	bus_req->eid = eid;
	bus_req->address = addr;
	bus_req->htc_msg = htc_msg;
	bus_req->comp = comp;

	FUNC4(&ar_sdio->wr_async_lock);
	FUNC3(&bus_req->list, &ar_sdio->wr_asyncq);
	FUNC5(&ar_sdio->wr_async_lock);

	return 0;
}