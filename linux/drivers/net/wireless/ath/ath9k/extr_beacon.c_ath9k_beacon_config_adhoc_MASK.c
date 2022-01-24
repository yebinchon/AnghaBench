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
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath_beacon_config {scalar_t__ enable_beacon; int /*<<< orphan*/  ibss_creator; int /*<<< orphan*/  intval; int /*<<< orphan*/  nexttbtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_BEACONS ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,struct ath_beacon_config*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath_softc *sc,
				      struct ath_beacon_config *conf)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);

	FUNC3(sc);

	FUNC1(ah, conf);

	FUNC0(sc, conf->nexttbtt, conf->intval);

	/*
	 * Set the global 'beacon has been configured' flag for the
	 * joiner case in IBSS mode.
	 */
	if (!conf->ibss_creator && conf->enable_beacon)
		FUNC4(ATH_OP_BEACONS, &common->op_flags);
}