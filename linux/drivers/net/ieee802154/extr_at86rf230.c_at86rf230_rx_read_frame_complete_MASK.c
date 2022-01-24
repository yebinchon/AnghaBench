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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct at86rf230_state_change {int* buf; struct at86rf230_local* lp; } ;
struct at86rf230_local {int /*<<< orphan*/  hw; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IEEE802154_MTU ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct at86rf230_state_change*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int const*,int) ; 

__attribute__((used)) static void
FUNC6(void *context)
{
	struct at86rf230_state_change *ctx = context;
	struct at86rf230_local *lp = ctx->lp;
	const u8 *buf = ctx->buf;
	struct sk_buff *skb;
	u8 len, lqi;

	len = buf[1];
	if (!FUNC2(len)) {
		FUNC1(&lp->spi->dev, "corrupted frame received\n");
		len = IEEE802154_MTU;
	}
	lqi = buf[2 + len];

	skb = FUNC0(IEEE802154_MTU);
	if (!skb) {
		FUNC1(&lp->spi->dev, "failed to allocate sk_buff\n");
		FUNC4(ctx);
		return;
	}

	FUNC5(skb, buf + 2, len);
	FUNC3(lp->hw, skb, lqi);
	FUNC4(ctx);
}