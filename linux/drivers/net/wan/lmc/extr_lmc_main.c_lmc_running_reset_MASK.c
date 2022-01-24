#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  tx_tbusy0; } ;
struct TYPE_13__ {int lmc_intrmask; int lmc_cmdmode; TYPE_2__ extra_stats; scalar_t__ lmc_txfull; TYPE_1__* lmc_media; } ;
typedef  TYPE_3__ lmc_softc_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* set_status ) (TYPE_3__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_link_status ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int TULIP_CMD_RXRUN ; 
 int TULIP_CMD_TXRUN ; 
 int TULIP_DEFAULT_INTR_MASK ; 
 int /*<<< orphan*/  csr_command ; 
 int /*<<< orphan*/  csr_intr ; 
 TYPE_3__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9 (struct net_device *dev) /*fold00*/
{
    lmc_softc_t *sc = FUNC1(dev);

    FUNC5(dev, "lmc_running_reset in");

    /* stop interrupts */
    /* Clear the interrupt mask */
    FUNC0 (sc, csr_intr, 0x00000000);

    FUNC2 (sc);
    FUNC3 (sc);
    FUNC4 (sc);
    /* sc->lmc_miireg16 |= LMC_MII16_LED_ALL; */
    sc->lmc_media->set_link_status (sc, 1);
    sc->lmc_media->set_status (sc, NULL);

    FUNC6(dev);

    sc->lmc_txfull = 0;
    sc->extra_stats.tx_tbusy0++;

    sc->lmc_intrmask = TULIP_DEFAULT_INTR_MASK;
    FUNC0 (sc, csr_intr, sc->lmc_intrmask);

    sc->lmc_cmdmode |= (TULIP_CMD_TXRUN | TULIP_CMD_RXRUN);
    FUNC0 (sc, csr_command, sc->lmc_cmdmode);

    FUNC5(dev, "lmc_running_reset_out");
}