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
struct urb {scalar_t__ status; struct request_context* context; } ;
struct request_context {int state; int /*<<< orphan*/  timer; int /*<<< orphan*/  in_rid; scalar_t__ killed; struct ezusb_priv* upriv; } ;
struct ezusb_priv {int /*<<< orphan*/  req_lock; } ;
typedef  enum ezusb_state { ____Placeholder_ezusb_state } ezusb_state ;

/* Variables and functions */
 scalar_t__ DEF_TIMEOUT ; 
 int EZUSB_CTX_COMPLETE ; 
 int EZUSB_CTX_REQ_COMPLETE ; 
#define  EZUSB_CTX_REQ_FAILED 131 
#define  EZUSB_CTX_REQ_SUBMITTED 130 
#define  EZUSB_CTX_REQ_TIMEOUT 129 
#define  EZUSB_CTX_RESP_RECEIVED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct request_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ezusb_priv*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct request_context*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	unsigned long flags;
	enum ezusb_state state;
	struct request_context *ctx = urb->context;
	struct ezusb_priv *upriv = ctx->upriv;

	FUNC6(&upriv->req_lock, flags);

	FUNC0(&ctx->timer);

	if (ctx->killed) {
		FUNC7(&upriv->req_lock, flags);
		FUNC5("interrupt called with dead ctx\n");
		goto out;
	}

	state = ctx->state;

	if (urb->status == 0) {
		switch (state) {
		case EZUSB_CTX_REQ_SUBMITTED:
			if (ctx->in_rid) {
				ctx->state = EZUSB_CTX_REQ_COMPLETE;
				/* reply URB still pending */
				FUNC3(upriv, &ctx->timer,
						jiffies + DEF_TIMEOUT);
				FUNC7(&upriv->req_lock,
						       flags);
				break;
			}
			/* fall through */
		case EZUSB_CTX_RESP_RECEIVED:
			/* IN already received before this OUT-ACK */
			ctx->state = EZUSB_CTX_COMPLETE;
			FUNC7(&upriv->req_lock, flags);
			FUNC2(ctx);
			break;

		default:
			FUNC7(&upriv->req_lock, flags);
			FUNC1("Unexpected state(0x%x, %d) in OUT URB",
			    state, urb->status);
			break;
		}
	} else {
		/* If someone cancels the OUT URB then its status
		 * should be either -ECONNRESET or -ENOENT.
		 */
		switch (state) {
		case EZUSB_CTX_REQ_SUBMITTED:
		case EZUSB_CTX_RESP_RECEIVED:
			ctx->state = EZUSB_CTX_REQ_FAILED;
			/* fall through */

		case EZUSB_CTX_REQ_FAILED:
		case EZUSB_CTX_REQ_TIMEOUT:
			FUNC7(&upriv->req_lock, flags);

			FUNC2(ctx);
			break;

		default:
			FUNC7(&upriv->req_lock, flags);

			FUNC1("Unexpected state(0x%x, %d) in OUT URB",
			    state, urb->status);
			break;
		}
	}
 out:
	FUNC4(ctx);
}