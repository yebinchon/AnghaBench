#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ulp_iscsi_info {unsigned int llimit; unsigned int ulimit; unsigned int tagmask; unsigned int* pgsz_factor; unsigned int max_txsz; unsigned int max_rxsz; int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {unsigned int tx_pg_size; unsigned int rx_pg_size; } ;
struct TYPE_4__ {TYPE_1__ tp; } ;
struct adapter {int /*<<< orphan*/  name; TYPE_2__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PM1_TX_CFG ; 
 int /*<<< orphan*/  A_TP_PARA_REG2 ; 
 int /*<<< orphan*/  A_TP_PARA_REG7 ; 
 int /*<<< orphan*/  A_ULPRX_ISCSI_LLIMIT ; 
 int /*<<< orphan*/  A_ULPRX_ISCSI_PSZ ; 
 int /*<<< orphan*/  A_ULPRX_ISCSI_TAGMASK ; 
 int /*<<< orphan*/  A_ULPRX_ISCSI_ULIMIT ; 
 int EOPNOTSUPP ; 
 unsigned int M_MAXRXDATA ; 
 unsigned int M_PMMAXXFERLEN0 ; 
 unsigned int M_PMMAXXFERLEN1 ; 
 unsigned int M_RXCOALESCESIZE ; 
 unsigned int S_MAXRXDATA ; 
 unsigned int S_PMMAXXFERLEN0 ; 
 unsigned int S_PMMAXXFERLEN1 ; 
 unsigned int S_RXCOALESCESIZE ; 
#define  ULP_ISCSI_GET_PARAMS 129 
#define  ULP_ISCSI_SET_PARAMS 128 
 unsigned int FUNC0 (int) ; 
 void* FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 unsigned int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct adapter *adapter, unsigned int req,
			      void *data)
{
	int i;
	int ret = 0;
	unsigned int val = 0;
	struct ulp_iscsi_info *uiip = data;

	switch (req) {
	case ULP_ISCSI_GET_PARAMS:
		uiip->pdev = adapter->pdev;
		uiip->llimit = FUNC3(adapter, A_ULPRX_ISCSI_LLIMIT);
		uiip->ulimit = FUNC3(adapter, A_ULPRX_ISCSI_ULIMIT);
		uiip->tagmask = FUNC3(adapter, A_ULPRX_ISCSI_TAGMASK);

		val = FUNC3(adapter, A_ULPRX_ISCSI_PSZ);
		for (i = 0; i < 4; i++, val >>= 8)
			uiip->pgsz_factor[i] = val & 0xFF;

		val = FUNC3(adapter, A_TP_PARA_REG7);
		uiip->max_txsz =
		uiip->max_rxsz = FUNC1((val >> S_PMMAXXFERLEN0)&M_PMMAXXFERLEN0,
				     (val >> S_PMMAXXFERLEN1)&M_PMMAXXFERLEN1);
		/*
		 * On tx, the iscsi pdu has to be <= tx page size and has to
		 * fit into the Tx PM FIFO.
		 */
		val = FUNC1(adapter->params.tp.tx_pg_size,
			  FUNC3(adapter, A_PM1_TX_CFG) >> 17);
		uiip->max_txsz = FUNC1(val, uiip->max_txsz);

		/* set MaxRxData to 16224 */
		val = FUNC3(adapter, A_TP_PARA_REG2);
		if ((val >> S_MAXRXDATA) != 0x3f60) {
			val &= (M_RXCOALESCESIZE << S_RXCOALESCESIZE);
			val |= FUNC0(0x3f60);
			FUNC2("%s, iscsi set MaxRxData to 16224 (0x%x)\n",
				adapter->name, val);
			FUNC4(adapter, A_TP_PARA_REG2, val);
		}

		/*
		 * on rx, the iscsi pdu has to be < rx page size and the
		 * the max rx data length programmed in TP
		 */
		val = FUNC1(adapter->params.tp.rx_pg_size,
			  ((FUNC3(adapter, A_TP_PARA_REG2)) >>
				S_MAXRXDATA) & M_MAXRXDATA);
		uiip->max_rxsz = FUNC1(val, uiip->max_rxsz);
		break;
	case ULP_ISCSI_SET_PARAMS:
		FUNC4(adapter, A_ULPRX_ISCSI_TAGMASK, uiip->tagmask);
		/* program the ddp page sizes */
		for (i = 0; i < 4; i++)
			val |= (uiip->pgsz_factor[i] & 0xF) << (8 * i);
		if (val && (val != FUNC3(adapter, A_ULPRX_ISCSI_PSZ))) {
			FUNC2("%s, setting iscsi pgsz 0x%x, %u,%u,%u,%u\n",
				adapter->name, val, uiip->pgsz_factor[0],
				uiip->pgsz_factor[1], uiip->pgsz_factor[2],
				uiip->pgsz_factor[3]);
			FUNC4(adapter, A_ULPRX_ISCSI_PSZ, val);
		}
		break;
	default:
		ret = -EOPNOTSUPP;
	}
	return ret;
}