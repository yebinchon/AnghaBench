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
struct igc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_ALGNERRC ; 
 int /*<<< orphan*/  IGC_BPRC ; 
 int /*<<< orphan*/  IGC_BPTC ; 
 int /*<<< orphan*/  IGC_CBRMPC ; 
 int /*<<< orphan*/  IGC_CBTMPC ; 
 int /*<<< orphan*/  IGC_CEXTERR ; 
 int /*<<< orphan*/  IGC_COLC ; 
 int /*<<< orphan*/  IGC_CRCERRS ; 
 int /*<<< orphan*/  IGC_DC ; 
 int /*<<< orphan*/  IGC_ECOL ; 
 int /*<<< orphan*/  IGC_FCRUC ; 
 int /*<<< orphan*/  IGC_GORCH ; 
 int /*<<< orphan*/  IGC_GORCL ; 
 int /*<<< orphan*/  IGC_GOTCH ; 
 int /*<<< orphan*/  IGC_GOTCL ; 
 int /*<<< orphan*/  IGC_GPRC ; 
 int /*<<< orphan*/  IGC_GPTC ; 
 int /*<<< orphan*/  IGC_HGORCH ; 
 int /*<<< orphan*/  IGC_HGORCL ; 
 int /*<<< orphan*/  IGC_HGOTCH ; 
 int /*<<< orphan*/  IGC_HGOTCL ; 
 int /*<<< orphan*/  IGC_HGPTC ; 
 int /*<<< orphan*/  IGC_HTCBDPC ; 
 int /*<<< orphan*/  IGC_HTDPMC ; 
 int /*<<< orphan*/  IGC_IAC ; 
 int /*<<< orphan*/  IGC_ICRXATC ; 
 int /*<<< orphan*/  IGC_ICRXDMTC ; 
 int /*<<< orphan*/  IGC_ICRXOC ; 
 int /*<<< orphan*/  IGC_ICRXPTC ; 
 int /*<<< orphan*/  IGC_ICTXATC ; 
 int /*<<< orphan*/  IGC_ICTXPTC ; 
 int /*<<< orphan*/  IGC_ICTXQEC ; 
 int /*<<< orphan*/  IGC_ICTXQMTC ; 
 int /*<<< orphan*/  IGC_LATECOL ; 
 int /*<<< orphan*/  IGC_LENERRS ; 
 int /*<<< orphan*/  IGC_MCC ; 
 int /*<<< orphan*/  IGC_MGTPDC ; 
 int /*<<< orphan*/  IGC_MGTPRC ; 
 int /*<<< orphan*/  IGC_MGTPTC ; 
 int /*<<< orphan*/  IGC_MPC ; 
 int /*<<< orphan*/  IGC_MPRC ; 
 int /*<<< orphan*/  IGC_MPTC ; 
 int /*<<< orphan*/  IGC_PRC1023 ; 
 int /*<<< orphan*/  IGC_PRC127 ; 
 int /*<<< orphan*/  IGC_PRC1522 ; 
 int /*<<< orphan*/  IGC_PRC255 ; 
 int /*<<< orphan*/  IGC_PRC511 ; 
 int /*<<< orphan*/  IGC_PRC64 ; 
 int /*<<< orphan*/  IGC_PTC1023 ; 
 int /*<<< orphan*/  IGC_PTC127 ; 
 int /*<<< orphan*/  IGC_PTC1522 ; 
 int /*<<< orphan*/  IGC_PTC255 ; 
 int /*<<< orphan*/  IGC_PTC511 ; 
 int /*<<< orphan*/  IGC_PTC64 ; 
 int /*<<< orphan*/  IGC_RFC ; 
 int /*<<< orphan*/  IGC_RJC ; 
 int /*<<< orphan*/  IGC_RLEC ; 
 int /*<<< orphan*/  IGC_RNBC ; 
 int /*<<< orphan*/  IGC_ROC ; 
 int /*<<< orphan*/  IGC_RPTHC ; 
 int /*<<< orphan*/  IGC_RUC ; 
 int /*<<< orphan*/  IGC_RXERRC ; 
 int /*<<< orphan*/  IGC_SCC ; 
 int /*<<< orphan*/  IGC_SEC ; 
 int /*<<< orphan*/  IGC_SYMERRS ; 
 int /*<<< orphan*/  IGC_TNCRS ; 
 int /*<<< orphan*/  IGC_TORH ; 
 int /*<<< orphan*/  IGC_TORL ; 
 int /*<<< orphan*/  IGC_TOTH ; 
 int /*<<< orphan*/  IGC_TOTL ; 
 int /*<<< orphan*/  IGC_TPR ; 
 int /*<<< orphan*/  IGC_TPT ; 
 int /*<<< orphan*/  IGC_TSCTC ; 
 int /*<<< orphan*/  IGC_TSCTFC ; 
 int /*<<< orphan*/  IGC_XOFFRXC ; 
 int /*<<< orphan*/  IGC_XOFFTXC ; 
 int /*<<< orphan*/  IGC_XONRXC ; 
 int /*<<< orphan*/  IGC_XONTXC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct igc_hw *hw)
{
	FUNC0(IGC_CRCERRS);
	FUNC0(IGC_SYMERRS);
	FUNC0(IGC_MPC);
	FUNC0(IGC_SCC);
	FUNC0(IGC_ECOL);
	FUNC0(IGC_MCC);
	FUNC0(IGC_LATECOL);
	FUNC0(IGC_COLC);
	FUNC0(IGC_DC);
	FUNC0(IGC_SEC);
	FUNC0(IGC_RLEC);
	FUNC0(IGC_XONRXC);
	FUNC0(IGC_XONTXC);
	FUNC0(IGC_XOFFRXC);
	FUNC0(IGC_XOFFTXC);
	FUNC0(IGC_FCRUC);
	FUNC0(IGC_GPRC);
	FUNC0(IGC_BPRC);
	FUNC0(IGC_MPRC);
	FUNC0(IGC_GPTC);
	FUNC0(IGC_GORCL);
	FUNC0(IGC_GORCH);
	FUNC0(IGC_GOTCL);
	FUNC0(IGC_GOTCH);
	FUNC0(IGC_RNBC);
	FUNC0(IGC_RUC);
	FUNC0(IGC_RFC);
	FUNC0(IGC_ROC);
	FUNC0(IGC_RJC);
	FUNC0(IGC_TORL);
	FUNC0(IGC_TORH);
	FUNC0(IGC_TOTL);
	FUNC0(IGC_TOTH);
	FUNC0(IGC_TPR);
	FUNC0(IGC_TPT);
	FUNC0(IGC_MPTC);
	FUNC0(IGC_BPTC);

	FUNC0(IGC_PRC64);
	FUNC0(IGC_PRC127);
	FUNC0(IGC_PRC255);
	FUNC0(IGC_PRC511);
	FUNC0(IGC_PRC1023);
	FUNC0(IGC_PRC1522);
	FUNC0(IGC_PTC64);
	FUNC0(IGC_PTC127);
	FUNC0(IGC_PTC255);
	FUNC0(IGC_PTC511);
	FUNC0(IGC_PTC1023);
	FUNC0(IGC_PTC1522);

	FUNC0(IGC_ALGNERRC);
	FUNC0(IGC_RXERRC);
	FUNC0(IGC_TNCRS);
	FUNC0(IGC_CEXTERR);
	FUNC0(IGC_TSCTC);
	FUNC0(IGC_TSCTFC);

	FUNC0(IGC_MGTPRC);
	FUNC0(IGC_MGTPDC);
	FUNC0(IGC_MGTPTC);

	FUNC0(IGC_IAC);
	FUNC0(IGC_ICRXOC);

	FUNC0(IGC_ICRXPTC);
	FUNC0(IGC_ICRXATC);
	FUNC0(IGC_ICTXPTC);
	FUNC0(IGC_ICTXATC);
	FUNC0(IGC_ICTXQEC);
	FUNC0(IGC_ICTXQMTC);
	FUNC0(IGC_ICRXDMTC);

	FUNC0(IGC_CBTMPC);
	FUNC0(IGC_HTDPMC);
	FUNC0(IGC_CBRMPC);
	FUNC0(IGC_RPTHC);
	FUNC0(IGC_HGPTC);
	FUNC0(IGC_HTCBDPC);
	FUNC0(IGC_HGORCL);
	FUNC0(IGC_HGORCH);
	FUNC0(IGC_HGOTCL);
	FUNC0(IGC_HGOTCH);
	FUNC0(IGC_LENERRS);
}