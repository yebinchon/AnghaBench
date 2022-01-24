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
struct spi_device {int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct hi3110_priv {int force_quit; int /*<<< orphan*/  hi3110_lock; TYPE_1__ can; int /*<<< orphan*/  transceiver; int /*<<< orphan*/ * wq; struct spi_device* spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  HI3110_READ_INTF ; 
 int /*<<< orphan*/  HI3110_WRITE_CTRL1 ; 
 int /*<<< orphan*/  HI3110_WRITE_INTE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hi3110_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct hi3110_priv* FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *net)
{
	struct hi3110_priv *priv = FUNC11(net);
	struct spi_device *spi = priv->spi;

	FUNC1(net);

	priv->force_quit = 1;
	FUNC3(spi->irq, priv);
	FUNC2(priv->wq);
	priv->wq = NULL;

	FUNC9(&priv->hi3110_lock);

	/* Disable transmit, interrupts and clear flags */
	FUNC8(spi, HI3110_WRITE_CTRL1, 0x0);
	FUNC8(spi, HI3110_WRITE_INTE, 0x0);
	FUNC7(spi, HI3110_READ_INTF);

	FUNC4(net);

	FUNC5(spi);

	FUNC6(priv->transceiver, 0);

	priv->can.state = CAN_STATE_STOPPED;

	FUNC10(&priv->hi3110_lock);

	FUNC0(net, CAN_LED_EVENT_STOP);

	return 0;
}