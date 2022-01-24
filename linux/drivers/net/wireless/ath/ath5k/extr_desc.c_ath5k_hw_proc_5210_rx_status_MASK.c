#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath5k_rx_status {int rs_datalen; int rs_more; int rs_antenna; int /*<<< orphan*/  rs_status; void* rs_phyerr; void* rs_keyix; void* rs_tstamp; void* rs_rate; void* rs_rssi; } ;
struct ath5k_hw_rx_status {int rx_status_1; int rx_status_0; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;
struct TYPE_3__ {struct ath5k_hw_rx_status rx_stat; } ;
struct TYPE_4__ {TYPE_1__ ds_rx; } ;
struct ath5k_desc {TYPE_2__ ud; } ;

/* Variables and functions */
 int AR5K_5210_RX_DESC_STATUS0_DATA_LEN ; 
 int AR5K_5210_RX_DESC_STATUS0_MORE ; 
 int AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5210 ; 
 int AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5211 ; 
 int AR5K_5210_RX_DESC_STATUS0_RECEIVE_RATE ; 
 int AR5K_5210_RX_DESC_STATUS0_RECEIVE_SIGNAL ; 
 int AR5K_5210_RX_DESC_STATUS1_CRC_ERROR ; 
 int AR5K_5210_RX_DESC_STATUS1_DECRYPT_CRC_ERROR ; 
 int AR5K_5210_RX_DESC_STATUS1_DONE ; 
 int AR5K_5210_RX_DESC_STATUS1_FIFO_OVERRUN_5210 ; 
 int AR5K_5210_RX_DESC_STATUS1_FRAME_RECEIVE_OK ; 
 int AR5K_5210_RX_DESC_STATUS1_KEY_INDEX ; 
 int AR5K_5210_RX_DESC_STATUS1_KEY_INDEX_VALID ; 
 int AR5K_5210_RX_DESC_STATUS1_PHY_ERROR ; 
 int AR5K_5210_RX_DESC_STATUS1_RECEIVE_TIMESTAMP ; 
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_AR5211 ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  AR5K_RXERR_CRC ; 
 int /*<<< orphan*/  AR5K_RXERR_DECRYPT ; 
 int /*<<< orphan*/  AR5K_RXERR_FIFO ; 
 int /*<<< orphan*/  AR5K_RXERR_PHY ; 
 void* AR5K_RXKEYIX_INVALID ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_rx_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct ath5k_hw *ah,
				struct ath5k_desc *desc,
				struct ath5k_rx_status *rs)
{
	struct ath5k_hw_rx_status *rx_status;

	rx_status = &desc->ud.ds_rx.rx_stat;

	/* No frame received / not ready */
	if (FUNC2(!(rx_status->rx_status_1 &
			AR5K_5210_RX_DESC_STATUS1_DONE)))
		return -EINPROGRESS;

	FUNC1(rs, 0, sizeof(struct ath5k_rx_status));

	/*
	 * Frame receive status
	 */
	rs->rs_datalen = rx_status->rx_status_0 &
		AR5K_5210_RX_DESC_STATUS0_DATA_LEN;
	rs->rs_rssi = FUNC0(rx_status->rx_status_0,
		AR5K_5210_RX_DESC_STATUS0_RECEIVE_SIGNAL);
	rs->rs_rate = FUNC0(rx_status->rx_status_0,
		AR5K_5210_RX_DESC_STATUS0_RECEIVE_RATE);
	rs->rs_more = !!(rx_status->rx_status_0 &
		AR5K_5210_RX_DESC_STATUS0_MORE);
	/* TODO: this timestamp is 13 bit, later on we assume 15 bit!
	 * also the HAL code for 5210 says the timestamp is bits [10..22] of the
	 * TSF, and extends the timestamp here to 15 bit.
	 * we need to check on 5210...
	 */
	rs->rs_tstamp = FUNC0(rx_status->rx_status_1,
		AR5K_5210_RX_DESC_STATUS1_RECEIVE_TIMESTAMP);

	if (ah->ah_version == AR5K_AR5211)
		rs->rs_antenna = FUNC0(rx_status->rx_status_0,
				AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5211);
	else
		rs->rs_antenna = (rx_status->rx_status_0 &
				AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5210)
				? 2 : 1;

	/*
	 * Key table status
	 */
	if (rx_status->rx_status_1 & AR5K_5210_RX_DESC_STATUS1_KEY_INDEX_VALID)
		rs->rs_keyix = FUNC0(rx_status->rx_status_1,
			AR5K_5210_RX_DESC_STATUS1_KEY_INDEX);
	else
		rs->rs_keyix = AR5K_RXKEYIX_INVALID;

	/*
	 * Receive/descriptor errors
	 */
	if (!(rx_status->rx_status_1 &
			AR5K_5210_RX_DESC_STATUS1_FRAME_RECEIVE_OK)) {
		if (rx_status->rx_status_1 &
				AR5K_5210_RX_DESC_STATUS1_CRC_ERROR)
			rs->rs_status |= AR5K_RXERR_CRC;

		/* only on 5210 */
		if ((ah->ah_version == AR5K_AR5210) &&
		    (rx_status->rx_status_1 &
				AR5K_5210_RX_DESC_STATUS1_FIFO_OVERRUN_5210))
			rs->rs_status |= AR5K_RXERR_FIFO;

		if (rx_status->rx_status_1 &
				AR5K_5210_RX_DESC_STATUS1_PHY_ERROR) {
			rs->rs_status |= AR5K_RXERR_PHY;
			rs->rs_phyerr = FUNC0(rx_status->rx_status_1,
				AR5K_5210_RX_DESC_STATUS1_PHY_ERROR);
		}

		if (rx_status->rx_status_1 &
				AR5K_5210_RX_DESC_STATUS1_DECRYPT_CRC_ERROR)
			rs->rs_status |= AR5K_RXERR_DECRYPT;
	}

	return 0;
}