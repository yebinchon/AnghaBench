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
struct sk_buff {int* data; int /*<<< orphan*/  len; } ;
struct kim_data_s {int /*<<< orphan*/  kim_rcvd; scalar_t__ rx_count; struct sk_buff* rx_skb; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  resp_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_W4_PACKET_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct kim_data_s *kim_gdata)
{
	struct sk_buff *skb = kim_gdata->rx_skb;
	if (!skb)
		return;

	/* these magic numbers are the position in the response buffer which
	 * allows us to distinguish whether the response is for the read
	 * version info. command
	 */
	if (skb->data[2] == 0x01 && skb->data[3] == 0x01 &&
			skb->data[4] == 0x10 && skb->data[5] == 0x00) {
		/* fw version response */
		FUNC2(kim_gdata->resp_buffer,
				kim_gdata->rx_skb->data,
				kim_gdata->rx_skb->len);
		kim_gdata->rx_state = ST_W4_PACKET_TYPE;
		kim_gdata->rx_skb = NULL;
		kim_gdata->rx_count = 0;
	} else if (FUNC4(skb->data[5] != 0)) {
		FUNC3("no proper response during fw download");
		FUNC3("data6 %x", skb->data[5]);
		FUNC1(skb);
		return;		/* keep waiting for the proper response */
	}
	/* becos of all the script being downloaded */
	FUNC0(&kim_gdata->kim_rcvd);
	FUNC1(skb);
}