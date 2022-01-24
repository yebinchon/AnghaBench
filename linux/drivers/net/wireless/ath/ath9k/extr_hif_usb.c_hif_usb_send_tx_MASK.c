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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; int tx_skb_cnt; scalar_t__ tx_buf_cnt; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_skb_queue; } ;
struct hif_device_usb {TYPE_1__ tx; } ;
struct ath9k_htc_tx_ctl {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ATH9K_HTC_AMPDU ; 
 scalar_t__ ATH9K_HTC_BEACON ; 
 scalar_t__ ATH9K_HTC_MGMT ; 
 scalar_t__ ATH9K_HTC_NORMAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int HIF_USB_TX_STOP ; 
 struct ath9k_htc_tx_ctl* FUNC0 (struct sk_buff*) ; 
 int MAX_TX_BUF_NUM ; 
 scalar_t__ MAX_TX_URB_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC3 (struct hif_device_usb*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct hif_device_usb *hif_dev, struct sk_buff *skb)
{
	struct ath9k_htc_tx_ctl *tx_ctl;
	unsigned long flags;
	int ret = 0;

	FUNC4(&hif_dev->tx.tx_lock, flags);

	if (hif_dev->tx.flags & HIF_USB_TX_STOP) {
		FUNC5(&hif_dev->tx.tx_lock, flags);
		return -ENODEV;
	}

	/* Check if the max queue count has been reached */
	if (hif_dev->tx.tx_skb_cnt > MAX_TX_BUF_NUM) {
		FUNC5(&hif_dev->tx.tx_lock, flags);
		return -ENOMEM;
	}

	FUNC5(&hif_dev->tx.tx_lock, flags);

	tx_ctl = FUNC0(skb);

	/* Mgmt/Beacon frames don't use the TX buffer pool */
	if ((tx_ctl->type == ATH9K_HTC_MGMT) ||
	    (tx_ctl->type == ATH9K_HTC_BEACON)) {
		ret = FUNC3(hif_dev, skb);
	}

	FUNC4(&hif_dev->tx.tx_lock, flags);

	if ((tx_ctl->type == ATH9K_HTC_NORMAL) ||
	    (tx_ctl->type == ATH9K_HTC_AMPDU)) {
		FUNC2(&hif_dev->tx.tx_skb_queue, skb);
		hif_dev->tx.tx_skb_cnt++;
	}

	/* Check if AMPDUs have to be sent immediately */
	if ((hif_dev->tx.tx_buf_cnt == MAX_TX_URB_NUM) &&
	    (hif_dev->tx.tx_skb_cnt < 2)) {
		FUNC1(hif_dev);
	}

	FUNC5(&hif_dev->tx.tx_lock, flags);

	return ret;
}