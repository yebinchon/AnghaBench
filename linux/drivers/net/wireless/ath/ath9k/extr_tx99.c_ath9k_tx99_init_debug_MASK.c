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
struct TYPE_2__ {int /*<<< orphan*/  debugfs_phy; } ;
struct ath_softc {TYPE_1__ debug; int /*<<< orphan*/  sc_ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_tx99 ; 
 int /*<<< orphan*/  fops_tx99_power ; 

void FUNC2(struct ath_softc *sc)
{
	if (!FUNC0(sc->sc_ah))
		return;

	FUNC1("tx99", 0600,
			    sc->debug.debugfs_phy, sc,
			    &fops_tx99);
	FUNC1("tx99_power", 0600,
			    sc->debug.debugfs_phy, sc,
			    &fops_tx99_power);
}