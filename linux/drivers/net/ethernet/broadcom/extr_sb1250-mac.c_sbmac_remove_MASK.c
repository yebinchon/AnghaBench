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
struct sbmac_softc {int /*<<< orphan*/  sbm_base; int /*<<< orphan*/  mii_bus; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sbmac_softc* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbmac_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pldev)
{
	struct net_device *dev = FUNC5(pldev);
	struct sbmac_softc *sc = FUNC4(dev);

	FUNC7(dev);
	FUNC6(sc);
	FUNC3(sc->mii_bus);
	FUNC2(sc->mii_bus);
	FUNC1(sc->sbm_base);
	FUNC0(dev);

	return 0;
}