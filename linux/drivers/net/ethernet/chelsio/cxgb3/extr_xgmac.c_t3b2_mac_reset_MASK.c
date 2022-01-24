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
typedef  unsigned int u32 ;
struct cmac {unsigned int offset; struct adapter* adapter; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ A_MPS_CFG ; 
 unsigned int A_TP_PIO_ADDR ; 
 unsigned int A_TP_PIO_DATA ; 
 int A_TP_TX_DROP_CFG_CH0 ; 
 unsigned int A_XGM_RESET_CTRL ; 
 unsigned int A_XGM_RX_CFG ; 
 scalar_t__ A_XGM_RX_MAX_PKT_SIZE_ERR_CNT ; 
 scalar_t__ A_XGM_TX_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int) ; 
 unsigned int F_DISPAUSEFRAMES ; 
 unsigned int F_EN1536BFRAMES ; 
 int F_ENFORCEPKT ; 
 unsigned int F_ENHASHMCAST ; 
 unsigned int F_ENJUMBO ; 
 unsigned int F_MAC_RESET_ ; 
 unsigned int F_PCS_RESET_ ; 
 int F_PORT0ACTIVE ; 
 int F_PORT1ACTIVE ; 
 unsigned int F_RGMII_RESET_ ; 
 unsigned int F_RMFCS ; 
 int F_TXPAUSEEN ; 
 unsigned int F_XG2G_RESET_ ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int FUNC4 (struct adapter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,scalar_t__,int,int) ; 
 scalar_t__ FUNC6 (struct adapter*,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct cmac*) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 

__attribute__((used)) static int FUNC10(struct cmac *mac)
{
	struct adapter *adap = mac->adapter;
	unsigned int oft = mac->offset, store;
	int idx = FUNC2(mac);
	u32 val;

	if (!FUNC2(mac))
		FUNC5(adap, A_MPS_CFG, F_PORT0ACTIVE, 0);
	else
		FUNC5(adap, A_MPS_CFG, F_PORT1ACTIVE, 0);

	/* Stop NIC traffic to reduce the number of TXTOGGLES */
	FUNC5(adap, A_MPS_CFG, F_ENFORCEPKT, 0);
	/* Ensure TX drains */
	FUNC5(adap, A_XGM_TX_CFG + oft, F_TXPAUSEEN, 0);

	FUNC7(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
	FUNC4(adap, A_XGM_RESET_CTRL + oft);    /* flush */

	/* Store A_TP_TX_DROP_CFG_CH0 */
	FUNC7(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
	store = FUNC4(adap, A_TP_TX_DROP_CFG_CH0 + idx);

	FUNC3(10);

	/* Change DROP_CFG to 0xc0000011 */
	FUNC7(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
	FUNC7(adap, A_TP_PIO_DATA, 0xc0000011);

	/* Check for xgm Rx fifo empty */
	/* Increased loop count to 1000 from 5 cover 1G and 100Mbps case */
	if (FUNC6(adap, A_XGM_RX_MAX_PKT_SIZE_ERR_CNT + oft,
			    0x80000000, 1, 1000, 2)) {
		FUNC0(adap, "MAC %d Rx fifo drain failed\n",
		       FUNC2(mac));
		return -1;
	}

	FUNC7(adap, A_XGM_RESET_CTRL + oft, 0);
	FUNC4(adap, A_XGM_RESET_CTRL + oft);    /* flush */

	val = F_MAC_RESET_;
	if (FUNC1(adap))
		val |= F_PCS_RESET_;
	else if (FUNC9(adap))
		val |= F_PCS_RESET_ | F_XG2G_RESET_;
	else
		val |= F_RGMII_RESET_ | F_XG2G_RESET_;
	FUNC7(adap, A_XGM_RESET_CTRL + oft, val);
	FUNC4(adap, A_XGM_RESET_CTRL + oft);  /* flush */
	if ((val & F_PCS_RESET_) && adap->params.rev) {
		FUNC3(1);
		FUNC8(mac);
	}
	FUNC7(adap, A_XGM_RX_CFG + oft,
		     F_DISPAUSEFRAMES | F_EN1536BFRAMES |
		     F_RMFCS | F_ENJUMBO | F_ENHASHMCAST);

	/* Restore the DROP_CFG */
	FUNC7(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
	FUNC7(adap, A_TP_PIO_DATA, store);

	if (!idx)
		FUNC5(adap, A_MPS_CFG, 0, F_PORT0ACTIVE);
	else
		FUNC5(adap, A_MPS_CFG, 0, F_PORT1ACTIVE);

	/* re-enable nic traffic */
	FUNC5(adap, A_MPS_CFG, F_ENFORCEPKT, 1);

	/*  Set: re-enable NIC traffic */
	FUNC5(adap, A_MPS_CFG, F_ENFORCEPKT, 1);

	return 0;
}