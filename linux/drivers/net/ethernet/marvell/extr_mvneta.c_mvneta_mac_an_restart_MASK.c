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
struct phylink_config {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_GMAC_AUTONEG_CONFIG ; 
 int MVNETA_GMAC_INBAND_RESTART_AN ; 
 int FUNC0 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 
 struct mvneta_port* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct phylink_config *config)
{
	struct net_device *ndev = FUNC3(config->dev);
	struct mvneta_port *pp = FUNC2(ndev);
	u32 gmac_an = FUNC0(pp, MVNETA_GMAC_AUTONEG_CONFIG);

	FUNC1(pp, MVNETA_GMAC_AUTONEG_CONFIG,
		    gmac_an | MVNETA_GMAC_INBAND_RESTART_AN);
	FUNC1(pp, MVNETA_GMAC_AUTONEG_CONFIG,
		    gmac_an & ~MVNETA_GMAC_INBAND_RESTART_AN);
}