#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct pcan_usb_msg_context {int ptr; scalar_t__ end; TYPE_3__* netdev; int /*<<< orphan*/  ts16; TYPE_1__* pdev; int /*<<< orphan*/  rec_ts_idx; } ;
struct can_frame {int can_id; int can_dlc; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  time_ref; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_RTR_FLAG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int PCAN_USB_STATUSLEN_DLC ; 
 int PCAN_USB_STATUSLEN_EXT_ID ; 
 int PCAN_USB_STATUSLEN_RTR ; 
 struct sk_buff* FUNC0 (TYPE_3__*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct pcan_usb_msg_context*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct skb_shared_hwtstamps* FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct pcan_usb_msg_context *mc, u8 status_len)
{
	u8 rec_len = status_len & PCAN_USB_STATUSLEN_DLC;
	struct sk_buff *skb;
	struct can_frame *cf;
	struct skb_shared_hwtstamps *hwts;

	skb = FUNC0(mc->netdev, &cf);
	if (!skb)
		return -ENOMEM;

	if (status_len & PCAN_USB_STATUSLEN_EXT_ID) {
		__le32 tmp32;

		if ((mc->ptr + 4) > mc->end)
			goto decode_failed;

		FUNC5(&tmp32, mc->ptr, 4);
		mc->ptr += 4;

		cf->can_id = (FUNC4(tmp32) >> 3) | CAN_EFF_FLAG;
	} else {
		__le16 tmp16;

		if ((mc->ptr + 2) > mc->end)
			goto decode_failed;

		FUNC5(&tmp16, mc->ptr, 2);
		mc->ptr += 2;

		cf->can_id = FUNC3(tmp16) >> 5;
	}

	cf->can_dlc = FUNC2(rec_len);

	/* Only first packet timestamp is a word */
	if (FUNC8(mc, !mc->rec_ts_idx))
		goto decode_failed;

	/* Next packet in the buffer will have a timestamp on a single byte */
	mc->rec_ts_idx++;

	/* read data */
	FUNC6(cf->data, 0x0, sizeof(cf->data));
	if (status_len & PCAN_USB_STATUSLEN_RTR) {
		cf->can_id |= CAN_RTR_FLAG;
	} else {
		if ((mc->ptr + rec_len) > mc->end)
			goto decode_failed;

		FUNC5(cf->data, mc->ptr, cf->can_dlc);
		mc->ptr += rec_len;
	}

	/* convert timestamp into kernel time */
	hwts = FUNC10(skb);
	FUNC9(&mc->pdev->time_ref, mc->ts16, &hwts->hwtstamp);

	/* update statistics */
	mc->netdev->stats.rx_packets++;
	mc->netdev->stats.rx_bytes += cf->can_dlc;
	/* push the skb */
	FUNC7(skb);

	return 0;

decode_failed:
	FUNC1(skb);
	return -EINVAL;
}