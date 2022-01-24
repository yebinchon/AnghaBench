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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mvneta_port {int /*<<< orphan*/  phylink; scalar_t__ tx_lpi_enabled; scalar_t__ eee_enabled; } ;
struct ethtool_eee {int tx_lpi_timer; scalar_t__ eee_enabled; scalar_t__ tx_lpi_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MVNETA_LPI_CTRL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct mvneta_port*,int) ; 
 int FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 
 struct mvneta_port* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ethtool_eee*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				  struct ethtool_eee *eee)
{
	struct mvneta_port *pp = FUNC3(dev);
	u32 lpi_ctl0;

	/* The Armada 37x documents do not give limits for this other than
	 * it being an 8-bit register. */
	if (eee->tx_lpi_enabled && eee->tx_lpi_timer > 255)
		return -EINVAL;

	lpi_ctl0 = FUNC1(pp, MVNETA_LPI_CTRL_0);
	lpi_ctl0 &= ~(0xff << 8);
	lpi_ctl0 |= eee->tx_lpi_timer << 8;
	FUNC2(pp, MVNETA_LPI_CTRL_0, lpi_ctl0);

	pp->eee_enabled = eee->eee_enabled;
	pp->tx_lpi_enabled = eee->tx_lpi_enabled;

	FUNC0(pp, eee->tx_lpi_enabled && eee->eee_enabled);

	return FUNC4(pp->phylink, eee);
}