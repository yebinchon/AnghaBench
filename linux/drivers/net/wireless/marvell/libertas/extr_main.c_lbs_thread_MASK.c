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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  dismantle; struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ currenttxskb; scalar_t__ psstate; scalar_t__ tx_pending_len; size_t resp_idx; scalar_t__ connect_status; int (* hw_host_to_card ) (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  auto_deepsleep_timer; int /*<<< orphan*/  tx_lockup_timer; int /*<<< orphan*/  command_timer; int /*<<< orphan*/  driver_lock; scalar_t__ mesh_dev; scalar_t__ dev; scalar_t__ dnld_sent; int /*<<< orphan*/  tx_pending_buf; struct cmd_ctrl_node* cur_cmd; scalar_t__ is_deep_sleep; int /*<<< orphan*/  fw_ready; scalar_t__ cmd_timed_out; int /*<<< orphan*/  (* reset_card ) (struct lbs_private*) ;scalar_t__ (* exit_deep_sleep ) (struct lbs_private*) ;scalar_t__ wakeup_dev_required; int /*<<< orphan*/  event_fifo; scalar_t__* resp_len; int /*<<< orphan*/ * resp_buf; scalar_t__ surpriseremoved; int /*<<< orphan*/  waitq; scalar_t__ psmode; int /*<<< orphan*/  cmdpendingq; } ;
struct cmd_ctrl_node {TYPE_1__* cmdbuf; } ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 scalar_t__ DNLD_RES_RECEIVED ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  MVMS_DAT ; 
 scalar_t__ PS_STATE_AWAKE ; 
 scalar_t__ PS_STATE_PRE_SLEEP ; 
 scalar_t__ PS_STATE_SLEEP ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*,struct cmd_ctrl_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct lbs_private*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC26 (struct lbs_private*) ; 
 int FUNC27 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC28(void *data)
{
	struct net_device *dev = data;
	struct lbs_private *priv = dev->ml_priv;
	wait_queue_entry_t wait;

	FUNC2(&wait, current);

	for (;;) {
		int shouldsleep;
		u8 resp_idx;

		FUNC7("1: currenttxskb %p, dnld_sent %d\n",
				priv->currenttxskb, priv->dnld_sent);

		FUNC0(&priv->waitq, &wait);
		FUNC22(TASK_INTERRUPTIBLE);
		FUNC23(&priv->driver_lock);

		if (FUNC5())
			shouldsleep = 0;	/* Bye */
		else if (priv->surpriseremoved)
			shouldsleep = 1;	/* We need to wait until we're _told_ to die */
		else if (priv->psstate == PS_STATE_SLEEP)
			shouldsleep = 1;	/* Sleep mode. Nothing we can do till it wakes */
		else if (priv->cmd_timed_out)
			shouldsleep = 0;	/* Command timed out. Recover */
		else if (!priv->fw_ready)
			shouldsleep = 1;	/* Firmware not ready. We're waiting for it */
		else if (priv->dnld_sent)
			shouldsleep = 1;	/* Something is en route to the device already */
		else if (priv->tx_pending_len > 0)
			shouldsleep = 0;	/* We've a packet to send */
		else if (priv->resp_len[priv->resp_idx])
			shouldsleep = 0;	/* We have a command response */
		else if (priv->cur_cmd)
			shouldsleep = 1;	/* Can't send a command; one already running */
		else if (!FUNC14(&priv->cmdpendingq) &&
					!(priv->wakeup_dev_required))
			shouldsleep = 0;	/* We have a command to send */
		else if (FUNC3(&priv->event_fifo))
			shouldsleep = 0;	/* We have an event to process */
		else
			shouldsleep = 1;	/* No command */

		if (shouldsleep) {
			FUNC7("sleeping, connect_status %d, "
				"psmode %d, psstate %d\n",
				priv->connect_status,
				priv->psmode, priv->psstate);
			FUNC24(&priv->driver_lock);
			FUNC21();
		} else
			FUNC24(&priv->driver_lock);

		FUNC7("2: currenttxskb %p, dnld_send %d\n",
			       priv->currenttxskb, priv->dnld_sent);

		FUNC22(TASK_RUNNING);
		FUNC20(&priv->waitq, &wait);

		FUNC7("3: currenttxskb %p, dnld_sent %d\n",
			       priv->currenttxskb, priv->dnld_sent);

		if (FUNC5()) {
			FUNC7("break from main thread\n");
			break;
		}

		if (priv->surpriseremoved) {
			FUNC7("adapter removed; waiting to die...\n");
			continue;
		}

		FUNC7("4: currenttxskb %p, dnld_sent %d\n",
		       priv->currenttxskb, priv->dnld_sent);

		/* Process any pending command response */
		FUNC23(&priv->driver_lock);
		resp_idx = priv->resp_idx;
		if (priv->resp_len[resp_idx]) {
			FUNC24(&priv->driver_lock);
			FUNC10(priv,
				priv->resp_buf[resp_idx],
				priv->resp_len[resp_idx]);
			FUNC23(&priv->driver_lock);
			priv->resp_len[resp_idx] = 0;
		}
		FUNC24(&priv->driver_lock);

		/* Process hardware events, e.g. card removed, link lost */
		FUNC23(&priv->driver_lock);
		while (FUNC3(&priv->event_fifo)) {
			u32 event;

			if (FUNC4(&priv->event_fifo,
				(unsigned char *) &event, sizeof(event)) !=
				sizeof(event))
					break;
			FUNC24(&priv->driver_lock);
			FUNC11(priv, event);
			FUNC23(&priv->driver_lock);
		}
		FUNC24(&priv->driver_lock);

		if (priv->wakeup_dev_required) {
			FUNC7("Waking up device...\n");
			/* Wake up device */
			if (priv->exit_deep_sleep(priv))
				FUNC7("Wakeup device failed\n");
			continue;
		}

		/* command timeout stuff */
		if (priv->cmd_timed_out && priv->cur_cmd) {
			struct cmd_ctrl_node *cmdnode = priv->cur_cmd;

			FUNC17(dev, "Timeout submitting command 0x%04x\n",
				    FUNC13(cmdnode->cmdbuf->command));
			FUNC6(priv, cmdnode, -ETIMEDOUT);

			/* Reset card, but only when it isn't in the process
			 * of being shutdown anyway. */
			if (!dev->dismantle && priv->reset_card)
				priv->reset_card(priv);
		}
		priv->cmd_timed_out = 0;

		if (!priv->fw_ready)
			continue;

		/* Check if we need to confirm Sleep Request received previously */
		if (priv->psstate == PS_STATE_PRE_SLEEP &&
		    !priv->dnld_sent && !priv->cur_cmd) {
			if (priv->connect_status == LBS_CONNECTED) {
				FUNC7("pre-sleep, currenttxskb %p, "
					"dnld_sent %d, cur_cmd %p\n",
					priv->currenttxskb, priv->dnld_sent,
					priv->cur_cmd);

				FUNC12(priv);
			} else {
				/* workaround for firmware sending
				 * deauth/linkloss event immediately
				 * after sleep request; remove this
				 * after firmware fixes it
				 */
				priv->psstate = PS_STATE_AWAKE;
				FUNC16(dev,
					     "ignore PS_SleepConfirm in non-connected state\n");
			}
		}

		/* The PS state is changed during processing of Sleep Request
		 * event above
		 */
		if ((priv->psstate == PS_STATE_SLEEP) ||
		    (priv->psstate == PS_STATE_PRE_SLEEP))
			continue;

		if (priv->is_deep_sleep)
			continue;

		/* Execute the next command */
		if (!priv->dnld_sent && !priv->cur_cmd)
			FUNC9(priv);

		FUNC23(&priv->driver_lock);
		if (!priv->dnld_sent && priv->tx_pending_len > 0) {
			int ret = priv->hw_host_to_card(priv, MVMS_DAT,
							priv->tx_pending_buf,
							priv->tx_pending_len);
			if (ret) {
				FUNC8("host_to_card failed %d\n", ret);
				priv->dnld_sent = DNLD_RES_RECEIVED;
			} else {
				FUNC15(&priv->tx_lockup_timer,
					  jiffies + (HZ * 5));
			}
			priv->tx_pending_len = 0;
			if (!priv->currenttxskb) {
				/* We can wake the queues immediately if we aren't
				   waiting for TX feedback */
				if (priv->connect_status == LBS_CONNECTED)
					FUNC19(priv->dev);
				if (priv->mesh_dev &&
				    FUNC18(priv->mesh_dev))
					FUNC19(priv->mesh_dev);
			}
		}
		FUNC24(&priv->driver_lock);
	}

	FUNC1(&priv->command_timer);
	FUNC1(&priv->tx_lockup_timer);
	FUNC1(&priv->auto_deepsleep_timer);

	return 0;
}