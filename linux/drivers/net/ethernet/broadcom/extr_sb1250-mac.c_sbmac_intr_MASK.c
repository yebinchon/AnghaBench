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
typedef  int uint64_t ;
struct sbmac_softc {int /*<<< orphan*/  sbm_rxdma; int /*<<< orphan*/  napi; int /*<<< orphan*/  sbm_imr; int /*<<< orphan*/  sbm_txdma; int /*<<< orphan*/  sbm_isr; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int M_MAC_COUNTER_ADDR ; 
 int M_MAC_INT_CHANNEL ; 
 int SBMAC_MAX_RXDESCR ; 
 int S_MAC_RX_CH0 ; 
 int S_MAC_TX_CH0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct sbmac_softc* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbmac_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sbmac_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq,void *dev_instance)
{
	struct net_device *dev = (struct net_device *) dev_instance;
	struct sbmac_softc *sc = FUNC5(dev);
	uint64_t isr;
	int handled = 0;

	/*
	 * Read the ISR (this clears the bits in the real
	 * register, except for counter addr)
	 */

	isr = FUNC2(sc->sbm_isr) & ~M_MAC_COUNTER_ADDR;

	if (isr == 0)
		return FUNC0(0);
	handled = 1;

	/*
	 * Transmits on channel 0
	 */

	if (isr & (M_MAC_INT_CHANNEL << S_MAC_TX_CH0))
		FUNC7(sc,&(sc->sbm_txdma), 0);

	if (isr & (M_MAC_INT_CHANNEL << S_MAC_RX_CH0)) {
		if (FUNC4(&sc->napi)) {
			FUNC3(0, sc->sbm_imr);
			FUNC1(&sc->napi);
			/* Depend on the exit from poll to reenable intr */
		}
		else {
			/* may leave some packets behind */
			FUNC6(sc,&(sc->sbm_rxdma),
					 SBMAC_MAX_RXDESCR * 2, 0);
		}
	}
	return FUNC0(handled);
}