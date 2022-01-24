#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct request_context {int state; int /*<<< orphan*/  done; int /*<<< orphan*/  out_rid; int /*<<< orphan*/  list; struct ezusb_priv* upriv; } ;
struct net_device_stats {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct ezusb_priv {scalar_t__ udev; int /*<<< orphan*/  req_lock; struct net_device* dev; } ;

/* Variables and functions */
#define  EZUSB_CTX_COMPLETE 132 
#define  EZUSB_CTX_REQSUBMIT_FAIL 131 
#define  EZUSB_CTX_REQ_FAILED 130 
#define  EZUSB_CTX_REQ_TIMEOUT 129 
#define  EZUSB_CTX_RESP_TIMEOUT 128 
 int /*<<< orphan*/  EZUSB_RID_TX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ezusb_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct request_context *ctx)
{
	struct ezusb_priv *upriv = ctx->upriv;
	unsigned long flags;

	FUNC6(&upriv->req_lock, flags);

	FUNC4(&ctx->list);
	if (upriv->udev) {
		FUNC7(&upriv->req_lock, flags);
		FUNC2(upriv);
		FUNC6(&upriv->req_lock, flags);
	}

	switch (ctx->state) {
	case EZUSB_CTX_COMPLETE:
	case EZUSB_CTX_REQSUBMIT_FAIL:
	case EZUSB_CTX_REQ_FAILED:
	case EZUSB_CTX_REQ_TIMEOUT:
	case EZUSB_CTX_RESP_TIMEOUT:
		FUNC7(&upriv->req_lock, flags);

		if ((ctx->out_rid == EZUSB_RID_TX) && upriv->dev) {
			struct net_device *dev = upriv->dev;
			struct net_device_stats *stats = &dev->stats;

			if (ctx->state != EZUSB_CTX_COMPLETE)
				stats->tx_errors++;
			else
				stats->tx_packets++;

			FUNC5(dev);
		}
		FUNC1(&ctx->done);
		FUNC3(ctx);
		break;

	default:
		FUNC7(&upriv->req_lock, flags);
		if (!upriv->udev) {
			/* This is normal, as all request contexts get flushed
			 * when the device is disconnected */
			FUNC0("Called, CTX not terminating, but device gone");
			FUNC1(&ctx->done);
			FUNC3(ctx);
			break;
		}

		FUNC0("Called, CTX not in terminating state.");
		/* Things are really bad if this happens. Just leak
		 * the CTX because it may still be linked to the
		 * queue or the OUT urb may still be active.
		 * Just leaking at least prevents an Oops or Panic.
		 */
		break;
	}
}