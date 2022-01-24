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
struct usbnet {int /*<<< orphan*/ * net; scalar_t__* data; } ;
struct cdc_ncm_ctx {scalar_t__ tx_timer_pending; int /*<<< orphan*/  mtx; int /*<<< orphan*/  tx_reason_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdc_ncm_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long param)
{
	struct usbnet *dev = (struct usbnet *)param;
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

	FUNC3(&ctx->mtx);
	if (ctx->tx_timer_pending != 0) {
		ctx->tx_timer_pending--;
		FUNC0(ctx);
		FUNC4(&ctx->mtx);
	} else if (dev->net != NULL) {
		ctx->tx_reason_timeout++;	/* count reason for transmitting */
		FUNC4(&ctx->mtx);
		FUNC1(dev->net);
		FUNC5(NULL, dev->net);
		FUNC2(dev->net);
	} else {
		FUNC4(&ctx->mtx);
	}
}