#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  expires; } ;
struct fza_private {int int_mask; int cmd_done_flag; int state; int queue_active; int state_chg_flag; int /*<<< orphan*/  lock; int /*<<< orphan*/  state_chg_wait; int /*<<< orphan*/  name; TYPE_2__ reset_timer; int /*<<< orphan*/  timer_state; int /*<<< orphan*/  ring_smt_rx_index; int /*<<< orphan*/  ring_smt_tx_index; int /*<<< orphan*/  ring_hst_rx_index; int /*<<< orphan*/  ring_rmc_txd_index; int /*<<< orphan*/  ring_rmc_tx_index; int /*<<< orphan*/  ring_uns_index; int /*<<< orphan*/  ring_cmd_index; TYPE_1__* regs; int /*<<< orphan*/  irq_count_state_chg; int /*<<< orphan*/  irq_count_uns_poll; int /*<<< orphan*/  irq_count_link_st_chg; int /*<<< orphan*/  irq_count_flush_tx; int /*<<< orphan*/  irq_count_smt_tx_poll; int /*<<< orphan*/  irq_count_rx_poll; int /*<<< orphan*/  irq_count_tx_done; int /*<<< orphan*/  cmd_done_wait; int /*<<< orphan*/  irq_count_cmd_done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  status; int /*<<< orphan*/  int_event; } ;

/* Variables and functions */
 int FZA_EVENT_CMD_DONE ; 
 int FZA_EVENT_FLUSH_TX ; 
 int FZA_EVENT_LINK_ST_CHG ; 
 int FZA_EVENT_RX_POLL ; 
 int FZA_EVENT_SMT_TX_POLL ; 
 int FZA_EVENT_STATE_CHG ; 
 int FZA_EVENT_TX_DONE ; 
 int FZA_EVENT_UNS_POLL ; 
 scalar_t__ FZA_LINK_ON ; 
 int /*<<< orphan*/  FZA_RING_CMD_INIT ; 
 int /*<<< orphan*/  FZA_RING_CMD_PARAM ; 
#define  FZA_STATE_HALTED 133 
#define  FZA_STATE_INITIALIZED 132 
#define  FZA_STATE_MAINTENANCE 131 
#define  FZA_STATE_RESET 130 
#define  FZA_STATE_RUNNING 129 
#define  FZA_STATE_UNINITIALIZED 128 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fza_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct fza_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct fza_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct fza_private* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC29(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct fza_private *fp = FUNC15(dev);
	uint int_event;

	/* Get interrupt events. */
	int_event = FUNC23(&fp->regs->int_event) & fp->int_mask;
	if (int_event == 0)
		return IRQ_NONE;

	/* Clear the events. */
	FUNC28(int_event, &fp->regs->int_event);

	/* Now handle the events.  The order matters. */

	/* Command finished interrupt. */
	if ((int_event & FZA_EVENT_CMD_DONE) != 0) {
		fp->irq_count_cmd_done++;

		FUNC25(&fp->lock);
		fp->cmd_done_flag = 1;
		FUNC27(&fp->cmd_done_wait);
		FUNC26(&fp->lock);
	}

	/* Transmit finished interrupt. */
	if ((int_event & FZA_EVENT_TX_DONE) != 0) {
		fp->irq_count_tx_done++;
		FUNC11(dev);
	}

	/* Host receive interrupt. */
	if ((int_event & FZA_EVENT_RX_POLL) != 0) {
		fp->irq_count_rx_poll++;
		FUNC8(dev);
	}

	/* SMT transmit interrupt. */
	if ((int_event & FZA_EVENT_SMT_TX_POLL) != 0) {
		fp->irq_count_smt_tx_poll++;
		FUNC13(dev);
	}

	/* Transmit ring flush request. */
	if ((int_event & FZA_EVENT_FLUSH_TX) != 0) {
		fp->irq_count_flush_tx++;
		FUNC12(dev);
	}

	/* Link status change interrupt. */
	if ((int_event & FZA_EVENT_LINK_ST_CHG) != 0) {
		uint status;

		fp->irq_count_link_st_chg++;
		status = FUNC24(&fp->regs->status);
		if (FUNC1(status) == FZA_LINK_ON) {
			FUNC17(dev);
			FUNC21("%s: link available\n", fp->name);
		} else {
			FUNC16(dev);
			FUNC21("%s: link unavailable\n", fp->name);
		}
	}

	/* Unsolicited event interrupt. */
	if ((int_event & FZA_EVENT_UNS_POLL) != 0) {
		fp->irq_count_uns_poll++;
		FUNC14(dev);
	}

	/* State change interrupt. */
	if ((int_event & FZA_EVENT_STATE_CHG) != 0) {
		uint status, state;

		fp->irq_count_state_chg++;

		status = FUNC24(&fp->regs->status);
		state = FUNC2(status);
		FUNC20("%s: state change: %x\n", fp->name, state);
		switch (state) {
		case FZA_STATE_RESET:
			break;

		case FZA_STATE_UNINITIALIZED:
			FUNC16(dev);
			FUNC4(&fp->reset_timer);
			fp->ring_cmd_index = 0;
			fp->ring_uns_index = 0;
			fp->ring_rmc_tx_index = 0;
			fp->ring_rmc_txd_index = 0;
			fp->ring_hst_rx_index = 0;
			fp->ring_smt_tx_index = 0;
			fp->ring_smt_rx_index = 0;
			if (fp->state > state) {
				FUNC21("%s: OK\n", fp->name);
				FUNC5(dev, FZA_RING_CMD_INIT);
			}
			break;

		case FZA_STATE_INITIALIZED:
			if (fp->state > state) {
				FUNC10(dev);
				FUNC5(dev, FZA_RING_CMD_PARAM);
			}
			break;

		case FZA_STATE_RUNNING:
		case FZA_STATE_MAINTENANCE:
			fp->state = state;
			FUNC9(fp);
			fp->queue_active = 1;
			FUNC19(dev);
			FUNC20("%s: queue woken\n", fp->name);
			break;

		case FZA_STATE_HALTED:
			fp->queue_active = 0;
			FUNC18(dev);
			FUNC20("%s: queue stopped\n", fp->name);
			FUNC4(&fp->reset_timer);
			FUNC22("%s: halted, reason: %x\n", fp->name,
				FUNC0(status));
			FUNC7(fp);
			FUNC21("%s: resetting the board...\n", fp->name);
			FUNC6(fp);
			fp->timer_state = 0;
			fp->reset_timer.expires = jiffies + 45 * HZ;
			FUNC3(&fp->reset_timer);
			break;

		default:
			FUNC22("%s: undefined state: %x\n", fp->name, state);
			break;
		}

		FUNC25(&fp->lock);
		fp->state_chg_flag = 1;
		FUNC27(&fp->state_chg_wait);
		FUNC26(&fp->lock);
	}

	return IRQ_HANDLED;
}