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
typedef  scalar_t__ u32 ;
struct ath_softc {scalar_t__ mem; int /*<<< orphan*/  sc_serial_rw; } ;
struct TYPE_2__ {scalar_t__ serialize_regmode; } ;
struct ath_hw {TYPE_1__ config; } ;
struct ath_common {scalar_t__ priv; } ;

/* Variables and functions */
 int NR_CPUS ; 
 scalar_t__ SER_REG_MODE_ON ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *hw_priv, u32 val, u32 reg_offset)
{
	struct ath_hw *ah = hw_priv;
	struct ath_common *common = FUNC0(ah);
	struct ath_softc *sc = (struct ath_softc *) common->priv;

	if (NR_CPUS > 1 && ah->config.serialize_regmode == SER_REG_MODE_ON) {
		unsigned long flags;
		FUNC2(&sc->sc_serial_rw, flags);
		FUNC1(val, sc->mem + reg_offset);
		FUNC3(&sc->sc_serial_rw, flags);
	} else
		FUNC1(val, sc->mem + reg_offset);
}