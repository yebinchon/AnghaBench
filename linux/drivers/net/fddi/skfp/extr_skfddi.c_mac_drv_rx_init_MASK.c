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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct s_smc {TYPE_1__ os; } ;

/* Variables and functions */
 int FDDI_MAC_HDR_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

int FUNC7(struct s_smc *smc, int len, int fc,
		    char *look_ahead, int la_len)
{
	struct sk_buff *skb;

	FUNC3("entering mac_drv_rx_init(len=%d)\n", len);

	// "Received" a SMT or NSA frame of the local SMT.

	if (len != la_len || len < FDDI_MAC_HDR_LEN || !look_ahead) {
		FUNC3("fddi: Discard invalid local SMT frame\n");
		FUNC3("  len=%d, la_len=%d, (ULONG) look_ahead=%08lXh.\n",
		       len, la_len, (unsigned long) look_ahead);
		return 0;
	}
	skb = FUNC0(len + 3, GFP_ATOMIC);
	if (!skb) {
		FUNC3("fddi: Local SMT: skb memory exhausted.\n");
		return 0;
	}
	FUNC6(skb, 3);
	FUNC5(skb, len);
	FUNC4(skb, look_ahead, len);

	// deliver frame to system
	skb->protocol = FUNC1(skb, smc->os.dev);
	FUNC2(skb);

	return 0;
}