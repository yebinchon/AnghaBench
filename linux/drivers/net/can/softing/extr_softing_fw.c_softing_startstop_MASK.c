#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  restarts; } ;
struct can_bittiming {int brp; int sjw; int phase_seg1; int prop_seg; int phase_seg2; } ;
struct TYPE_13__ {int ctrlmode; TYPE_5__ can_stats; int /*<<< orphan*/  state; struct can_bittiming bittiming; } ;
struct TYPE_8__ {scalar_t__ echo_get; scalar_t__ echo_put; scalar_t__ pending; } ;
struct softing_priv {int index; int output; TYPE_6__ can; TYPE_1__ tx; struct softing* card; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  up; } ;
struct TYPE_9__ {scalar_t__ pending; } ;
struct softing {struct net_device** net; TYPE_7__ fw; int /*<<< orphan*/ * dpram; TYPE_4__* pdat; TYPE_3__* pdev; TYPE_2__ tx; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int /*<<< orphan*/  can_dlc; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_11__ {int generation; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct net_device**) ; 
 int CAN_CTRLMODE_3_SAMPLES ; 
 int /*<<< orphan*/  CAN_ERR_DLC ; 
 int CAN_ERR_FLAG ; 
 int CAN_ERR_RESTARTED ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int DPRAM_FCT_PARAM ; 
 size_t DPRAM_INFO_BUSSTATE ; 
 size_t DPRAM_INFO_BUSSTATE2 ; 
 size_t DPRAM_V2_IRQ_TOHOST ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct can_frame*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct softing_priv* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int FUNC14 (struct softing*,int) ; 
 scalar_t__ FUNC15 (struct net_device*) ; 
 int FUNC16 (struct softing*,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct softing*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,struct can_frame*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct softing*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(struct net_device *dev, int up)
{
	int ret;
	struct softing *card;
	struct softing_priv *priv;
	struct net_device *netdev;
	int bus_bitmask_start;
	int j, error_reporting;
	struct can_frame msg;
	const struct can_bittiming *bt;

	priv = FUNC9(dev);
	card = priv->card;

	if (!card->fw.up)
		return -EIO;

	ret = FUNC7(&card->fw.lock);
	if (ret)
		return ret;

	bus_bitmask_start = 0;
	if (dev && up)
		/* prepare to start this bus as well */
		bus_bitmask_start |= (1 << priv->index);
	/* bring netdevs down */
	for (j = 0; j < FUNC0(card->net); ++j) {
		netdev = card->net[j];
		if (!netdev)
			continue;
		priv = FUNC9(netdev);

		if (dev != netdev)
			FUNC11(netdev);

		if (FUNC10(netdev)) {
			if (dev != netdev)
				bus_bitmask_start |= (1 << j);
			priv->tx.pending = 0;
			priv->tx.echo_put = 0;
			priv->tx.echo_get = 0;
			/*
			 * this bus' may just have called open_candev()
			 * which is rather stupid to call close_candev()
			 * already
			 * but we may come here from busoff recovery too
			 * in which case the echo_skb _needs_ flushing too.
			 * just be sure to call open_candev() again
			 */
			FUNC1(netdev);
		}
		priv->can.state = CAN_STATE_STOPPED;
	}
	card->tx.pending = 0;

	FUNC14(card, 0);
	ret = FUNC19(card);
	if (ret)
		goto failed;
	if (!bus_bitmask_start)
		/* no busses to be brought up */
		goto card_done;

	if ((bus_bitmask_start & 1) && (bus_bitmask_start & 2)
			&& (FUNC15(card->net[0])
				!= FUNC15(card->net[1]))) {
		FUNC2(&card->pdev->dev,
				"err_reporting flag differs for busses\n");
		goto invalid;
	}
	error_reporting = 0;
	if (bus_bitmask_start & 1) {
		netdev = card->net[0];
		priv = FUNC9(netdev);
		error_reporting += FUNC15(netdev);
		/* init chip 1 */
		bt = &priv->can.bittiming;
		FUNC4(bt->brp, &card->dpram[DPRAM_FCT_PARAM + 2]);
		FUNC4(bt->sjw, &card->dpram[DPRAM_FCT_PARAM + 4]);
		FUNC4(bt->phase_seg1 + bt->prop_seg,
				&card->dpram[DPRAM_FCT_PARAM + 6]);
		FUNC4(bt->phase_seg2, &card->dpram[DPRAM_FCT_PARAM + 8]);
		FUNC4((priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES) ? 1 : 0,
				&card->dpram[DPRAM_FCT_PARAM + 10]);
		ret = FUNC16(card, 1, "initialize_chip[0]");
		if (ret < 0)
			goto failed;
		/* set mode */
		FUNC4(0, &card->dpram[DPRAM_FCT_PARAM + 2]);
		FUNC4(0, &card->dpram[DPRAM_FCT_PARAM + 4]);
		ret = FUNC16(card, 3, "set_mode[0]");
		if (ret < 0)
			goto failed;
		/* set filter */
		/* 11bit id & mask */
		FUNC4(0x0000, &card->dpram[DPRAM_FCT_PARAM + 2]);
		FUNC4(0x07ff, &card->dpram[DPRAM_FCT_PARAM + 4]);
		/* 29bit id.lo & mask.lo & id.hi & mask.hi */
		FUNC4(0x0000, &card->dpram[DPRAM_FCT_PARAM + 6]);
		FUNC4(0xffff, &card->dpram[DPRAM_FCT_PARAM + 8]);
		FUNC4(0x0000, &card->dpram[DPRAM_FCT_PARAM + 10]);
		FUNC4(0x1fff, &card->dpram[DPRAM_FCT_PARAM + 12]);
		ret = FUNC16(card, 7, "set_filter[0]");
		if (ret < 0)
			goto failed;
		/* set output control */
		FUNC4(priv->output, &card->dpram[DPRAM_FCT_PARAM + 2]);
		ret = FUNC16(card, 5, "set_output[0]");
		if (ret < 0)
			goto failed;
	}
	if (bus_bitmask_start & 2) {
		netdev = card->net[1];
		priv = FUNC9(netdev);
		error_reporting += FUNC15(netdev);
		/* init chip2 */
		bt = &priv->can.bittiming;
		FUNC4(bt->brp, &card->dpram[DPRAM_FCT_PARAM + 2]);
		FUNC4(bt->sjw, &card->dpram[DPRAM_FCT_PARAM + 4]);
		FUNC4(bt->phase_seg1 + bt->prop_seg,
				&card->dpram[DPRAM_FCT_PARAM + 6]);
		FUNC4(bt->phase_seg2, &card->dpram[DPRAM_FCT_PARAM + 8]);
		FUNC4((priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES) ? 1 : 0,
				&card->dpram[DPRAM_FCT_PARAM + 10]);
		ret = FUNC16(card, 2, "initialize_chip[1]");
		if (ret < 0)
			goto failed;
		/* set mode2 */
		FUNC4(0, &card->dpram[DPRAM_FCT_PARAM + 2]);
		FUNC4(0, &card->dpram[DPRAM_FCT_PARAM + 4]);
		ret = FUNC16(card, 4, "set_mode[1]");
		if (ret < 0)
			goto failed;
		/* set filter2 */
		/* 11bit id & mask */
		FUNC4(0x0000, &card->dpram[DPRAM_FCT_PARAM + 2]);
		FUNC4(0x07ff, &card->dpram[DPRAM_FCT_PARAM + 4]);
		/* 29bit id.lo & mask.lo & id.hi & mask.hi */
		FUNC4(0x0000, &card->dpram[DPRAM_FCT_PARAM + 6]);
		FUNC4(0xffff, &card->dpram[DPRAM_FCT_PARAM + 8]);
		FUNC4(0x0000, &card->dpram[DPRAM_FCT_PARAM + 10]);
		FUNC4(0x1fff, &card->dpram[DPRAM_FCT_PARAM + 12]);
		ret = FUNC16(card, 8, "set_filter[1]");
		if (ret < 0)
			goto failed;
		/* set output control2 */
		FUNC4(priv->output, &card->dpram[DPRAM_FCT_PARAM + 2]);
		ret = FUNC16(card, 6, "set_output[1]");
		if (ret < 0)
			goto failed;
	}
	/* enable_error_frame */
	/*
	 * Error reporting is switched off at the moment since
	 * the receiving of them is not yet 100% verified
	 * This should be enabled sooner or later
	 *
	if (error_reporting) {
		ret = softing_fct_cmd(card, 51, "enable_error_frame");
		if (ret < 0)
			goto failed;
	}
	*/
	/* initialize interface */
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 2]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 4]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 6]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 8]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 10]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 12]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 14]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 16]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 18]);
	FUNC4(1, &card->dpram[DPRAM_FCT_PARAM + 20]);
	ret = FUNC16(card, 17, "initialize_interface");
	if (ret < 0)
		goto failed;
	/* enable_fifo */
	ret = FUNC16(card, 36, "enable_fifo");
	if (ret < 0)
		goto failed;
	/* enable fifo tx ack */
	ret = FUNC16(card, 13, "fifo_tx_ack[0]");
	if (ret < 0)
		goto failed;
	/* enable fifo tx ack2 */
	ret = FUNC16(card, 14, "fifo_tx_ack[1]");
	if (ret < 0)
		goto failed;
	/* start_chip */
	ret = FUNC16(card, 11, "start_chip");
	if (ret < 0)
		goto failed;
	FUNC5(0, &card->dpram[DPRAM_INFO_BUSSTATE]);
	FUNC5(0, &card->dpram[DPRAM_INFO_BUSSTATE2]);
	if (card->pdat->generation < 2) {
		FUNC5(0, &card->dpram[DPRAM_V2_IRQ_TOHOST]);
		/* flush the DPRAM caches */
		FUNC20();
	}

	FUNC17(card);

	/*
	 * do socketcan notifications/status changes
	 * from here, no errors should occur, or the failed: part
	 * must be reviewed
	 */
	FUNC6(&msg, 0, sizeof(msg));
	msg.can_id = CAN_ERR_FLAG | CAN_ERR_RESTARTED;
	msg.can_dlc = CAN_ERR_DLC;
	for (j = 0; j < FUNC0(card->net); ++j) {
		if (!(bus_bitmask_start & (1 << j)))
			continue;
		netdev = card->net[j];
		if (!netdev)
			continue;
		priv = FUNC9(netdev);
		priv->can.state = CAN_STATE_ERROR_ACTIVE;
		FUNC13(netdev);
		if (dev != netdev) {
			/* notify other busses on the restart */
			FUNC18(netdev, &msg, 0);
			++priv->can.can_stats.restarts;
		}
		FUNC12(netdev);
	}

	/* enable interrupts */
	ret = FUNC14(card, 1);
	if (ret)
		goto failed;
card_done:
	FUNC8(&card->fw.lock);
	return 0;
invalid:
	ret = -EINVAL;
failed:
	FUNC14(card, 0);
	FUNC19(card);
	FUNC8(&card->fw.lock);
	/* bring all other interfaces down */
	for (j = 0; j < FUNC0(card->net); ++j) {
		netdev = card->net[j];
		if (!netdev)
			continue;
		FUNC3(netdev);
	}
	return ret;
}