#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {int last_dsn; TYPE_1__* spi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWME_LQILIMIT ; 
 int /*<<< orphan*/  MAC_RX_ON_WHEN_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*,TYPE_1__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct ieee802154_hw *hw)
{
	int status;
	u8 rx_on_when_idle;
	u8 lqi_threshold = 0;
	struct ca8210_priv *priv = hw->priv;

	priv->last_dsn = -1;
	/* Turn receiver on when idle for now just to test rx */
	rx_on_when_idle = 1;
	status = FUNC3(
		MAC_RX_ON_WHEN_IDLE,
		0,
		1,
		&rx_on_when_idle,
		priv->spi
	);
	if (status) {
		FUNC0(
			&priv->spi->dev,
			"Setting rx_on_when_idle failed, status = %d\n",
			status
		);
		return FUNC2(status);
	}
	status = FUNC1(
		HWME_LQILIMIT,
		1,
		&lqi_threshold,
		priv->spi
	);
	if (status) {
		FUNC0(
			&priv->spi->dev,
			"Setting lqilimit failed, status = %d\n",
			status
		);
		return FUNC2(status);
	}

	return 0;
}