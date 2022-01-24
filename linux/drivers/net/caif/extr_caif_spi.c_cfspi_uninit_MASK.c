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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pa_tx; int /*<<< orphan*/ * va_tx; int /*<<< orphan*/  pa_rx; int /*<<< orphan*/  va_rx; } ;
struct cfspi {int /*<<< orphan*/  wq; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; TYPE_1__ xfer; int /*<<< orphan*/ * ndev; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_TERMINATE ; 
 int /*<<< orphan*/  cfspi_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfspi*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cfspi* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct cfspi *cfspi = FUNC4(dev);

	/* Remove from list. */
	FUNC6(&cfspi_list_lock);
	FUNC3(&cfspi->list);
	FUNC7(&cfspi_list_lock);

	cfspi->ndev = NULL;
	/* Free DMA buffers. */
	FUNC2(cfspi, cfspi->xfer.va_rx, cfspi->xfer.pa_rx);
	FUNC2(cfspi, cfspi->xfer.va_tx[0], cfspi->xfer.pa_tx[0]);
	FUNC5(SPI_TERMINATE, &cfspi->state);
	FUNC8(&cfspi->wait);
	FUNC0(cfspi->wq);
	/* Destroy debugfs directory and files. */
	FUNC1(cfspi);
	return;
}