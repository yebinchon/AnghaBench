#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int status; int actual_length; TYPE_2__* dev; int /*<<< orphan*/ * transfer_buffer; struct catc* context; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct catc {int /*<<< orphan*/  flags; TYPE_3__* netdev; TYPE_2__* usbdev; int /*<<< orphan*/  recq_sz; scalar_t__ is_f5u011; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RX_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct urb *urb)
{
	struct catc *catc = urb->context;
	u8 *pkt_start = urb->transfer_buffer;
	struct sk_buff *skb;
	int pkt_len, pkt_offset = 0;
	int status = urb->status;

	if (!catc->is_f5u011) {
		FUNC2(RX_RUNNING, &catc->flags);
		pkt_offset = 2;
	}

	if (status) {
		FUNC4(&urb->dev->dev, "rx_done, status %d, length %d\n",
			status, urb->actual_length);
		return;
	}

	do {
		if(!catc->is_f5u011) {
			pkt_len = FUNC6((__le16*)pkt_start);
			if (pkt_len > urb->actual_length) {
				catc->netdev->stats.rx_length_errors++;
				catc->netdev->stats.rx_errors++;
				break;
			}
		} else {
			pkt_len = urb->actual_length;
		}

		if (!(skb = FUNC3(pkt_len)))
			return;

		FUNC9(skb, pkt_start + pkt_offset, pkt_len);
		FUNC10(skb, pkt_len);

		skb->protocol = FUNC5(skb, catc->netdev);
		FUNC8(skb);

		catc->netdev->stats.rx_packets++;
		catc->netdev->stats.rx_bytes += pkt_len;

		/* F5U011 only does one packet per RX */
		if (catc->is_f5u011)
			break;
		pkt_start += (((pkt_len + 1) >> 6) + 1) << 6;

	} while (pkt_start - (u8 *) urb->transfer_buffer < urb->actual_length);

	if (catc->is_f5u011) {
		if (FUNC1(&catc->recq_sz)) {
			int state;
			FUNC0(&catc->recq_sz);
			FUNC7(catc->netdev, "getting extra packet\n");
			urb->dev = catc->usbdev;
			if ((state = FUNC11(urb, GFP_ATOMIC)) < 0) {
				FUNC7(catc->netdev,
					   "submit(rx_urb) status %d\n", state);
			}
		} else {
			FUNC2(RX_RUNNING, &catc->flags);
		}
	}
}