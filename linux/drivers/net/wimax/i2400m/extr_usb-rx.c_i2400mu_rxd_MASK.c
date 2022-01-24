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
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {int /*<<< orphan*/  rx_lock; TYPE_1__ wimax_dev; } ;
struct i2400mu {int rx_size; TYPE_2__* usb_iface; int /*<<< orphan*/ * rx_kthread; int /*<<< orphan*/  urb_edc; int /*<<< orphan*/  rx_size_acc; int /*<<< orphan*/  rx_size_cnt; int /*<<< orphan*/  rx_pending_count; int /*<<< orphan*/  rx_wq; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDC_ERROR_TIMEFRAME ; 
 int /*<<< orphan*/  EDC_MAX_ERRORS ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC6 (int,struct device*,char*,struct i2400mu*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct device*,char*,struct i2400mu*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct i2400m*,struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct i2400mu*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2400mu*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC21(void *_i2400mu)
{
	int result = 0;
	struct i2400mu *i2400mu = _i2400mu;
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct device *dev = &i2400mu->usb_iface->dev;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	size_t pending;
	int rx_size;
	struct sk_buff *rx_skb;
	unsigned long flags;

	FUNC7(4, dev, "(i2400mu %p)\n", i2400mu);
	FUNC17(&i2400m->rx_lock, flags);
	FUNC0(i2400mu->rx_kthread != NULL);
	i2400mu->rx_kthread = current;
	FUNC18(&i2400m->rx_lock, flags);
	while (1) {
		FUNC8(2, dev, "RX: waiting for messages\n");
		pending = 0;
		FUNC20(
			i2400mu->rx_wq,
			(FUNC15()	/* check this first! */
			 || (pending = FUNC5(&i2400mu->rx_pending_count)))
			);
		if (FUNC15())
			break;
		if (pending == 0)
			continue;
		rx_size = i2400mu->rx_size;
		FUNC8(2, dev, "RX: reading up to %d bytes\n", rx_size);
		rx_skb = FUNC3(net_dev, rx_size, GFP_KERNEL);
		if (rx_skb == NULL) {
			FUNC9(dev, "RX: can't allocate skb [%d bytes]\n",
				rx_size);
			FUNC16(50);	/* give it some time? */
			continue;
		}

		/* Receive the message with the payloads */
		rx_skb = FUNC12(i2400mu, rx_skb);
		result = FUNC2(rx_skb);
		if (FUNC1(rx_skb))
			goto out;
		FUNC4(&i2400mu->rx_pending_count);
		if (rx_skb == NULL || rx_skb->len == 0) {
			/* some "ignorable" condition */
			FUNC14(rx_skb);
			continue;
		}

		/* Deliver the message to the generic i2400m code */
		i2400mu->rx_size_cnt++;
		i2400mu->rx_size_acc += rx_skb->len;
		result = FUNC11(i2400m, rx_skb);
		if (result == -EIO
		    && FUNC10(&i2400mu->urb_edc,
			       EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
			goto error_reset;
		}

		/* Maybe adjust RX buffer size */
		FUNC13(i2400mu);
	}
	result = 0;
out:
	FUNC17(&i2400m->rx_lock, flags);
	i2400mu->rx_kthread = NULL;
	FUNC18(&i2400m->rx_lock, flags);
	FUNC6(4, dev, "(i2400mu %p) = %d\n", i2400mu, result);
	return result;

error_reset:
	FUNC9(dev, "RX: maximum errors in received buffer exceeded; "
		"resetting device\n");
	FUNC19(i2400mu->usb_iface);
	goto out;
}