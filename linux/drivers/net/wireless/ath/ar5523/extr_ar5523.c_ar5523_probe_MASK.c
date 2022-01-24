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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int driver_info; } ;
struct usb_device {int dummy; } ;
struct ieee80211_hw {int extra_tx_headroom; int queues; TYPE_1__* wiphy; struct ar5523* priv; } ;
struct ar5523_tx_desc {int dummy; } ;
struct ar5523_chunk {int dummy; } ;
struct ar5523 {int /*<<< orphan*/  wq; int /*<<< orphan*/ * vif; int /*<<< orphan*/  rx_data_list_lock; int /*<<< orphan*/  rx_data_used; int /*<<< orphan*/  rx_data_free; int /*<<< orphan*/  rx_refill_work; int /*<<< orphan*/  rx_data_free_cnt; int /*<<< orphan*/  tx_flush_waitq; int /*<<< orphan*/  tx_nr_pending; int /*<<< orphan*/  tx_nr_total; int /*<<< orphan*/  tx_data_list_lock; int /*<<< orphan*/  tx_queue_submitted; int /*<<< orphan*/  tx_queue_pending; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  tx_wd_work; int /*<<< orphan*/  tx_wd_timer; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  mutex; struct usb_device* dev; struct ieee80211_hw* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  interface_modes; } ;

/* Variables and functions */
 int AR5523_FLAG_ABG ; 
 int AR5523_FLAG_PRE_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HAS_RATE_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  RX_INCLUDES_FCS ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int FUNC5 (struct ar5523*) ; 
 int FUNC6 (struct ar5523*) ; 
 int FUNC7 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC8 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC9 (struct ar5523*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC11 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC12 (struct ar5523*) ; 
 int FUNC13 (struct ar5523*) ; 
 int FUNC14 (struct ar5523*) ; 
 int FUNC15 (struct ar5523*) ; 
 int FUNC16 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC17 (struct ar5523*,char*,...) ; 
 int FUNC18 (struct ar5523*) ; 
 int FUNC19 (struct usb_device*) ; 
 int /*<<< orphan*/  ar5523_ops ; 
 int /*<<< orphan*/  ar5523_rx_refill_work ; 
 int /*<<< orphan*/  ar5523_stat_work ; 
 int FUNC20 (struct ar5523*) ; 
 int /*<<< orphan*/  ar5523_tx_wd_timer ; 
 int /*<<< orphan*/  ar5523_tx_wd_work ; 
 int /*<<< orphan*/  ar5523_tx_work ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC24 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC26 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC29 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct usb_interface*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC29(intf);
	struct ieee80211_hw *hw;
	struct ar5523 *ar;
	int error = -ENOMEM;

	/*
	 * Load firmware if the device requires it.  This will return
	 * -ENXIO on success and we'll get called back afer the usb
	 * id changes to indicate that the firmware is present.
	 */
	if (id->driver_info & AR5523_FLAG_PRE_FIRMWARE)
		return FUNC19(dev);


	hw = FUNC24(sizeof(*ar), &ar5523_ops);
	if (!hw)
		goto out;
	FUNC4(hw, &intf->dev);

	ar = hw->priv;
	ar->hw = hw;
	ar->dev = dev;
	FUNC30(&ar->mutex);

	FUNC1(&ar->stat_work, ar5523_stat_work);
	FUNC32(&ar->tx_wd_timer, ar5523_tx_wd_timer, 0);
	FUNC3(&ar->tx_wd_work, ar5523_tx_wd_work);
	FUNC3(&ar->tx_work, ar5523_tx_work);
	FUNC2(&ar->tx_queue_pending);
	FUNC2(&ar->tx_queue_submitted);
	FUNC31(&ar->tx_data_list_lock);
	FUNC21(&ar->tx_nr_total, 0);
	FUNC21(&ar->tx_nr_pending, 0);
	FUNC28(&ar->tx_flush_waitq);

	FUNC21(&ar->rx_data_free_cnt, 0);
	FUNC3(&ar->rx_refill_work, ar5523_rx_refill_work);
	FUNC2(&ar->rx_data_free);
	FUNC2(&ar->rx_data_used);
	FUNC31(&ar->rx_data_list_lock);

	ar->wq = FUNC22("ar5523");
	if (!ar->wq) {
		FUNC9(ar, "Could not create wq\n");
		goto out_free_ar;
	}

	error = FUNC5(ar);
	if (error) {
		FUNC9(ar, "Could not allocate rx buffers\n");
		goto out_free_wq;
	}

	error = FUNC6(ar);
	if (error) {
		FUNC9(ar, "Could not allocate rx command buffers\n");
		goto out_free_rx_bufs;
	}

	error = FUNC7(ar);
	if (error) {
		FUNC9(ar, "Could not allocate tx command buffers\n");
		goto out_free_rx_cmd;
	}

	error = FUNC20(ar);
	if (error) {
		FUNC9(ar, "Failed to submit rx cmd\n");
		goto out_free_tx_cmd;
	}

	/*
	 * We're now ready to send/receive firmware commands.
	 */
	error = FUNC16(ar);
	if (error) {
		FUNC9(ar, "could not initialize adapter\n");
		goto out_cancel_rx_cmd;
	}

	error = FUNC15(ar);
	if (error) {
		FUNC9(ar, "could not get caps from adapter\n");
		goto out_cancel_rx_cmd;
	}

	error = FUNC13(ar);
	if (error) {
		FUNC9(ar, "could not get caps from adapter\n");
		goto out_cancel_rx_cmd;
	}

	error = FUNC14(ar);
	if (error != 0) {
		FUNC9(ar, "could not get device status\n");
		goto out_cancel_rx_cmd;
	}

	FUNC17(ar, "MAC/BBP AR5523, RF AR%c112\n",
			(id->driver_info & AR5523_FLAG_ABG) ? '5' : '2');

	ar->vif = NULL;
	FUNC26(hw, HAS_RATE_CONTROL);
	FUNC26(hw, RX_INCLUDES_FCS);
	FUNC26(hw, SIGNAL_DBM);
	hw->extra_tx_headroom = sizeof(struct ar5523_tx_desc) +
				sizeof(struct ar5523_chunk);
	hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION);
	hw->queues = 1;

	error = FUNC18(ar);
	if (error)
		goto out_cancel_rx_cmd;

	FUNC34(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	FUNC33(intf, hw);

	error = FUNC27(hw);
	if (error) {
		FUNC9(ar, "could not register device\n");
		goto out_cancel_rx_cmd;
	}

	FUNC17(ar, "Found and initialized AR5523 device\n");
	return 0;

out_cancel_rx_cmd:
	FUNC8(ar);
out_free_tx_cmd:
	FUNC12(ar);
out_free_rx_cmd:
	FUNC11(ar);
out_free_rx_bufs:
	FUNC10(ar);
out_free_wq:
	FUNC23(ar->wq);
out_free_ar:
	FUNC25(hw);
out:
	return error;
}