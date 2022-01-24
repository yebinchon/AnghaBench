#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct rocker_port {int /*<<< orphan*/  tx_ring; TYPE_2__* dev; struct rocker* rocker; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;
struct napi_struct {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct sk_buff* FUNC6 (struct rocker_desc_info const*) ; 
 int FUNC7 (struct rocker_desc_info const*) ; 
 struct rocker_desc_info* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rocker const*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct rocker_port* FUNC10 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct rocker_port*,struct rocker_desc_info const*) ; 

__attribute__((used)) static int FUNC12(struct napi_struct *napi, int budget)
{
	struct rocker_port *rocker_port = FUNC10(napi);
	const struct rocker *rocker = rocker_port->rocker;
	const struct rocker_desc_info *desc_info;
	u32 credits = 0;
	int err;

	/* Cleanup tx descriptors */
	while ((desc_info = FUNC8(&rocker_port->tx_ring))) {
		struct sk_buff *skb;

		err = FUNC7(desc_info);
		if (err && FUNC2())
			FUNC3(rocker_port->dev, "tx desc received with err %d\n",
				   err);
		FUNC11(rocker_port, desc_info);

		skb = FUNC6(desc_info);
		if (err == 0) {
			rocker_port->dev->stats.tx_packets++;
			rocker_port->dev->stats.tx_bytes += skb->len;
		} else {
			rocker_port->dev->stats.tx_errors++;
		}

		FUNC0(skb);
		credits++;
	}

	if (credits && FUNC4(rocker_port->dev))
		FUNC5(rocker_port->dev);

	FUNC1(napi);
	FUNC9(rocker, &rocker_port->tx_ring, credits);

	return 0;
}