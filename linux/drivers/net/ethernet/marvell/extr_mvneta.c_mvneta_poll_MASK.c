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
typedef  int u32 ;
struct napi_struct {int /*<<< orphan*/  dev; } ;
struct mvneta_port {int cause_rx_tx; scalar_t__ neta_armada3700; TYPE_1__* dev; int /*<<< orphan*/ * rxqs; scalar_t__ bm_priv; int /*<<< orphan*/  ports; } ;
struct mvneta_pcpu_port {int cause_rx_tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int MVNETA_CAUSE_LINK_CHANGE ; 
 int MVNETA_CAUSE_PHY_STATUS_CHANGE ; 
 int /*<<< orphan*/  MVNETA_INTR_MISC_CAUSE ; 
 int /*<<< orphan*/  MVNETA_INTR_NEW_CAUSE ; 
 int /*<<< orphan*/  MVNETA_INTR_NEW_MASK ; 
 int MVNETA_MISCINTR_INTR_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MVNETA_TX_INTR_MASK_ALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mvneta_port*) ; 
 int FUNC7 (struct napi_struct*,struct mvneta_port*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct napi_struct*,struct mvneta_port*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mvneta_port*,int) ; 
 int FUNC10 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct napi_struct*,int) ; 
 struct mvneta_port* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  rxq_number ; 
 struct mvneta_pcpu_port* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txq_number ; 

__attribute__((used)) static int FUNC17(struct napi_struct *napi, int budget)
{
	int rx_done = 0;
	u32 cause_rx_tx;
	int rx_queue;
	struct mvneta_port *pp = FUNC14(napi->dev);
	struct mvneta_pcpu_port *port = FUNC16(pp->ports);

	if (!FUNC15(pp->dev)) {
		FUNC12(napi);
		return rx_done;
	}

	/* Read cause register */
	cause_rx_tx = FUNC10(pp, MVNETA_INTR_NEW_CAUSE);
	if (cause_rx_tx & MVNETA_MISCINTR_INTR_MASK) {
		u32 cause_misc = FUNC10(pp, MVNETA_INTR_MISC_CAUSE);

		FUNC11(pp, MVNETA_INTR_MISC_CAUSE, 0);

		if (cause_misc & (MVNETA_CAUSE_PHY_STATUS_CHANGE |
				  MVNETA_CAUSE_LINK_CHANGE))
			FUNC6(pp);
	}

	/* Release Tx descriptors */
	if (cause_rx_tx & MVNETA_TX_INTR_MASK_ALL) {
		FUNC9(pp, (cause_rx_tx & MVNETA_TX_INTR_MASK_ALL));
		cause_rx_tx &= ~MVNETA_TX_INTR_MASK_ALL;
	}

	/* For the case where the last mvneta_poll did not process all
	 * RX packets
	 */
	rx_queue = FUNC3(((cause_rx_tx >> 8) & 0xff));

	cause_rx_tx |= pp->neta_armada3700 ? pp->cause_rx_tx :
		port->cause_rx_tx;

	if (rx_queue) {
		rx_queue = rx_queue - 1;
		if (pp->bm_priv)
			rx_done = FUNC7(napi, pp, budget,
						 &pp->rxqs[rx_queue]);
		else
			rx_done = FUNC8(napi, pp, budget,
						 &pp->rxqs[rx_queue]);
	}

	if (rx_done < budget) {
		cause_rx_tx = 0;
		FUNC13(napi, rx_done);

		if (pp->neta_armada3700) {
			unsigned long flags;

			FUNC5(flags);
			FUNC11(pp, MVNETA_INTR_NEW_MASK,
				    FUNC0(rxq_number) |
				    FUNC1(txq_number) |
				    MVNETA_MISCINTR_INTR_MASK);
			FUNC4(flags);
		} else {
			FUNC2(pp->dev->irq, 0);
		}
	}

	if (pp->neta_armada3700)
		pp->cause_rx_tx = cause_rx_tx;
	else
		port->cause_rx_tx = cause_rx_tx;

	return rx_done;
}