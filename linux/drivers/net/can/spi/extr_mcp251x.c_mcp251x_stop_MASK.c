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
struct mcp251x_priv {int force_quit; int /*<<< orphan*/  mcp_lock; TYPE_1__ can; int /*<<< orphan*/  transceiver; int /*<<< orphan*/ * wq; struct spi_device* spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CANINTE ; 
 int /*<<< orphan*/  CANINTF ; 
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mcp251x_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct mcp251x_priv* FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *net)
{
	struct mcp251x_priv *priv = FUNC11(net);
	struct spi_device *spi = priv->spi;

	FUNC2(net);

	priv->force_quit = 1;
	FUNC4(spi->irq, priv);
	FUNC3(priv->wq);
	priv->wq = NULL;

	FUNC9(&priv->mcp_lock);

	/* Disable and clear pending interrupts */
	FUNC8(spi, CANINTE, 0x00);
	FUNC8(spi, CANINTF, 0x00);

	FUNC8(spi, FUNC0(0), 0);
	FUNC5(net);

	FUNC6(spi);

	FUNC7(priv->transceiver, 0);

	priv->can.state = CAN_STATE_STOPPED;

	FUNC10(&priv->mcp_lock);

	FUNC1(net, CAN_LED_EVENT_STOP);

	return 0;
}