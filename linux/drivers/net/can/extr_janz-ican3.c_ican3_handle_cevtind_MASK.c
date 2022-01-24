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
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct ican3_msg {scalar_t__* data; int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  error_passive; int /*<<< orphan*/  error_warning; int /*<<< orphan*/  bus_error; int /*<<< orphan*/  bus_off; } ;
struct TYPE_4__ {int state; int ctrlmode; TYPE_1__ can_stats; } ;
struct ican3_dev {TYPE_2__ can; struct net_device* ndev; int /*<<< orphan*/  echoq; } ;
struct can_frame {int can_id; scalar_t__* data; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int CAN_CTRLMODE_BERR_REPORTING ; 
 int CAN_ERR_BUSERROR ; 
 int CAN_ERR_BUSOFF ; 
 int CAN_ERR_CRTL ; 
 scalar_t__ CAN_ERR_CRTL_RX_OVERFLOW ; 
 scalar_t__ CAN_ERR_CRTL_RX_PASSIVE ; 
 scalar_t__ CAN_ERR_CRTL_RX_WARNING ; 
 scalar_t__ CAN_ERR_CRTL_TX_PASSIVE ; 
 scalar_t__ CAN_ERR_CRTL_TX_WARNING ; 
 int CAN_ERR_PROT ; 
 scalar_t__ CAN_ERR_PROT_BIT ; 
 scalar_t__ CAN_ERR_PROT_FORM ; 
 scalar_t__ CAN_ERR_PROT_STUFF ; 
 scalar_t__ CAN_ERR_PROT_TX ; 
 int CAN_STATE_BUS_OFF ; 
 int CAN_STATE_ERROR_ACTIVE ; 
 int CAN_STATE_ERROR_PASSIVE ; 
 int CAN_STATE_ERROR_WARNING ; 
 scalar_t__ CEVTIND_BEI ; 
 scalar_t__ CEVTIND_CHIP_SJA1000 ; 
 scalar_t__ CEVTIND_DOI ; 
 scalar_t__ CEVTIND_EI ; 
 scalar_t__ CEVTIND_LOST ; 
#define  ECC_BIT 130 
 scalar_t__ ECC_DIR ; 
#define  ECC_FORM 129 
 scalar_t__ ECC_MASK ; 
 scalar_t__ ECC_SEG ; 
#define  ECC_STUFF 128 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ SR_BS ; 
 scalar_t__ SR_ES ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct ican3_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ican3_dev *mod, struct ican3_msg *msg)
{
	struct net_device *dev = mod->ndev;
	struct net_device_stats *stats = &dev->stats;
	enum can_state state = mod->can.state;
	u8 isrc, ecc, status, rxerr, txerr;
	struct can_frame *cf;
	struct sk_buff *skb;

	/* we can only handle the SJA1000 part */
	if (msg->data[1] != CEVTIND_CHIP_SJA1000) {
		FUNC6(mod->ndev, "unable to handle errors on non-SJA1000\n");
		return -ENODEV;
	}

	/* check the message length for sanity */
	if (FUNC4(msg->len) < 6) {
		FUNC6(mod->ndev, "error message too short\n");
		return -EINVAL;
	}

	isrc = msg->data[0];
	ecc = msg->data[2];
	status = msg->data[3];
	rxerr = msg->data[4];
	txerr = msg->data[5];

	/*
	 * This hardware lacks any support other than bus error messages to
	 * determine if packet transmission has failed.
	 *
	 * When TX errors happen, one echo skb needs to be dropped from the
	 * front of the queue.
	 *
	 * A small bit of code is duplicated here and below, to avoid error
	 * skb allocation when it will just be freed immediately.
	 */
	if (isrc == CEVTIND_BEI) {
		int ret;
		FUNC5(mod->ndev, "bus error interrupt\n");

		/* TX error */
		if (!(ecc & ECC_DIR)) {
			FUNC3(FUNC8(&mod->echoq));
			stats->tx_errors++;
		} else {
			stats->rx_errors++;
		}

		/*
		 * The controller automatically disables bus-error interrupts
		 * and therefore we must re-enable them.
		 */
		ret = FUNC2(mod, 1);
		if (ret) {
			FUNC6(mod->ndev, "unable to re-enable bus-error\n");
			return ret;
		}

		/* bus error reporting is off, return immediately */
		if (!(mod->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING))
			return 0;
	}

	skb = FUNC0(dev, &cf);
	if (skb == NULL)
		return -ENOMEM;

	/* data overrun interrupt */
	if (isrc == CEVTIND_DOI || isrc == CEVTIND_LOST) {
		FUNC5(mod->ndev, "data overrun interrupt\n");
		cf->can_id |= CAN_ERR_CRTL;
		cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
		stats->rx_over_errors++;
		stats->rx_errors++;
	}

	/* error warning + passive interrupt */
	if (isrc == CEVTIND_EI) {
		FUNC5(mod->ndev, "error warning + passive interrupt\n");
		if (status & SR_BS) {
			state = CAN_STATE_BUS_OFF;
			cf->can_id |= CAN_ERR_BUSOFF;
			mod->can.can_stats.bus_off++;
			FUNC1(dev);
		} else if (status & SR_ES) {
			if (rxerr >= 128 || txerr >= 128)
				state = CAN_STATE_ERROR_PASSIVE;
			else
				state = CAN_STATE_ERROR_WARNING;
		} else {
			state = CAN_STATE_ERROR_ACTIVE;
		}
	}

	/* bus error interrupt */
	if (isrc == CEVTIND_BEI) {
		mod->can.can_stats.bus_error++;
		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;

		switch (ecc & ECC_MASK) {
		case ECC_BIT:
			cf->data[2] |= CAN_ERR_PROT_BIT;
			break;
		case ECC_FORM:
			cf->data[2] |= CAN_ERR_PROT_FORM;
			break;
		case ECC_STUFF:
			cf->data[2] |= CAN_ERR_PROT_STUFF;
			break;
		default:
			cf->data[3] = ecc & ECC_SEG;
			break;
		}

		if (!(ecc & ECC_DIR))
			cf->data[2] |= CAN_ERR_PROT_TX;

		cf->data[6] = txerr;
		cf->data[7] = rxerr;
	}

	if (state != mod->can.state && (state == CAN_STATE_ERROR_WARNING ||
					state == CAN_STATE_ERROR_PASSIVE)) {
		cf->can_id |= CAN_ERR_CRTL;
		if (state == CAN_STATE_ERROR_WARNING) {
			mod->can.can_stats.error_warning++;
			cf->data[1] = (txerr > rxerr) ?
				CAN_ERR_CRTL_TX_WARNING :
				CAN_ERR_CRTL_RX_WARNING;
		} else {
			mod->can.can_stats.error_passive++;
			cf->data[1] = (txerr > rxerr) ?
				CAN_ERR_CRTL_TX_PASSIVE :
				CAN_ERR_CRTL_RX_PASSIVE;
		}

		cf->data[6] = txerr;
		cf->data[7] = rxerr;
	}

	mod->can.state = state;
	FUNC7(skb);
	return 0;
}