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
struct net_device {unsigned int base_addr; int* dev_addr; } ;
struct local_info {scalar_t__ cardtype; } ;

/* Variables and functions */
 int AUTO_MODE ; 
 int BANK_0 ; 
 int BANK_0U ; 
 int BANK_2 ; 
 int BANK_2U ; 
 scalar_t__ BMPR12 ; 
 scalar_t__ BMPR13 ; 
 scalar_t__ COL_CTRL ; 
 int CONFIG0_DFL ; 
 int CONFIG0_DFL_1 ; 
 int CONFIG0_RST ; 
 int CONFIG0_RST_1 ; 
 scalar_t__ CONFIG_0 ; 
 scalar_t__ CONFIG_1 ; 
 scalar_t__ CONTEC ; 
 scalar_t__ DATAPORT ; 
 int D_RX_INTR ; 
 int D_TX_INTR ; 
 int D_TX_MODE ; 
 int ID_MATCHED ; 
 int INTR_OFF ; 
 int INTR_ON ; 
 scalar_t__ LAN_CTRL ; 
 scalar_t__ MBH10302 ; 
 scalar_t__ NODE_ID ; 
 scalar_t__ RX_INTR ; 
 scalar_t__ RX_MODE ; 
 scalar_t__ RX_SKIP ; 
 scalar_t__ RX_STATUS ; 
 scalar_t__ TDK ; 
 int TDK_AUTO_MODE ; 
 scalar_t__ TX_INTR ; 
 scalar_t__ TX_MODE ; 
 scalar_t__ TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct local_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ sram_config ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
    struct local_info *lp = FUNC2(dev);
    unsigned int ioaddr = dev->base_addr;
    int i;

    FUNC1(dev, "fjn_reset() called\n");

    /* Reset controller */
    if( sram_config == 0 ) 
	FUNC3(CONFIG0_RST, ioaddr + CONFIG_0);
    else
	FUNC3(CONFIG0_RST_1, ioaddr + CONFIG_0);

    /* Power On chip and select bank 0 */
    if (lp->cardtype == MBH10302)
	FUNC3(BANK_0, ioaddr + CONFIG_1);
    else
	FUNC3(BANK_0U, ioaddr + CONFIG_1);

    /* Set Tx modes */
    FUNC3(D_TX_MODE, ioaddr + TX_MODE);
    /* set Rx modes */
    FUNC3(ID_MATCHED, ioaddr + RX_MODE);

    /* Set hardware address */
    for (i = 0; i < 6; i++) 
        FUNC3(dev->dev_addr[i], ioaddr + NODE_ID + i);

    /* (re)initialize the multicast table */
    FUNC4(dev);

    /* Switch to bank 2 (runtime mode) */
    if (lp->cardtype == MBH10302)
	FUNC3(BANK_2, ioaddr + CONFIG_1);
    else
	FUNC3(BANK_2U, ioaddr + CONFIG_1);

    /* set 16col ctrl bits */
    if( lp->cardtype == TDK || lp->cardtype == CONTEC) 
        FUNC3(TDK_AUTO_MODE, ioaddr + COL_CTRL);
    else
        FUNC3(AUTO_MODE, ioaddr + COL_CTRL);

    /* clear Reserved Regs */
    FUNC3(0x00, ioaddr + BMPR12);
    FUNC3(0x00, ioaddr + BMPR13);

    /* reset Skip packet reg. */
    FUNC3(0x01, ioaddr + RX_SKIP);

    /* Enable Tx and Rx */
    if( sram_config == 0 )
	FUNC3(CONFIG0_DFL, ioaddr + CONFIG_0);
    else
	FUNC3(CONFIG0_DFL_1, ioaddr + CONFIG_0);

    /* Init receive pointer ? */
    FUNC0(ioaddr + DATAPORT);
    FUNC0(ioaddr + DATAPORT);

    /* Clear all status */
    FUNC3(0xff, ioaddr + TX_STATUS);
    FUNC3(0xff, ioaddr + RX_STATUS);

    if (lp->cardtype == MBH10302)
	FUNC3(INTR_OFF, ioaddr + LAN_CTRL);

    /* Turn on Rx interrupts */
    FUNC3(D_TX_INTR, ioaddr + TX_INTR);
    FUNC3(D_RX_INTR, ioaddr + RX_INTR);

    /* Turn on interrupts from LAN card controller */
    if (lp->cardtype == MBH10302)
	FUNC3(INTR_ON, ioaddr + LAN_CTRL);
}