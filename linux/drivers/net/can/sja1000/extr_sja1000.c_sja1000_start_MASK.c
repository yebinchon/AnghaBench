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
struct TYPE_2__ {scalar_t__ state; } ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ,int) ;TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CAN_STATE_STOPPED ; 
 int CDR_PELICAN ; 
 int /*<<< orphan*/  SJA1000_CDR ; 
 int /*<<< orphan*/  SJA1000_ECC ; 
 int /*<<< orphan*/  SJA1000_IR ; 
 int /*<<< orphan*/  SJA1000_RXERR ; 
 int /*<<< orphan*/  SJA1000_TXERR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct sja1000_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sja1000_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sja1000_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC1(dev);

	/* leave reset mode */
	if (priv->can.state != CAN_STATE_STOPPED)
		FUNC3(dev);

	/* Initialize chip if uninitialized at this stage */
	if (!(priv->read_reg(priv, SJA1000_CDR) & CDR_PELICAN))
		FUNC0(dev);

	/* Clear error counters and error code capture */
	priv->write_reg(priv, SJA1000_TXERR, 0x0);
	priv->write_reg(priv, SJA1000_RXERR, 0x0);
	priv->read_reg(priv, SJA1000_ECC);

	/* clear interrupt flags */
	priv->read_reg(priv, SJA1000_IR);

	/* leave reset mode */
	FUNC2(dev);
}