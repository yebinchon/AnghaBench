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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct igc_hw {int revision_id; unsigned int device_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  hrmpc; int /*<<< orphan*/  scvpc; int /*<<< orphan*/  lenerrs; int /*<<< orphan*/  hgotc; int /*<<< orphan*/  hgorc; int /*<<< orphan*/  hgptc; int /*<<< orphan*/  rpthc; int /*<<< orphan*/  iac; int /*<<< orphan*/  tsctc; int /*<<< orphan*/  bptc; int /*<<< orphan*/  mptc; int /*<<< orphan*/  ptc1522; int /*<<< orphan*/  ptc1023; int /*<<< orphan*/  ptc511; int /*<<< orphan*/  ptc255; int /*<<< orphan*/  ptc127; int /*<<< orphan*/  ptc64; int /*<<< orphan*/  tpt; int /*<<< orphan*/  tpr; int /*<<< orphan*/  tot; int /*<<< orphan*/  tor; int /*<<< orphan*/  mgptc; int /*<<< orphan*/  mgpdc; int /*<<< orphan*/  mgprc; int /*<<< orphan*/  rjc; int /*<<< orphan*/  roc; int /*<<< orphan*/  rfc; int /*<<< orphan*/  ruc; int /*<<< orphan*/  rnbc; int /*<<< orphan*/  gotc; int /*<<< orphan*/  gorc; int /*<<< orphan*/  gptc; int /*<<< orphan*/  mprc; int /*<<< orphan*/  bprc; int /*<<< orphan*/  gprc; int /*<<< orphan*/  prc1522; int /*<<< orphan*/  prc1023; int /*<<< orphan*/  prc511; int /*<<< orphan*/  prc255; int /*<<< orphan*/  prc127; int /*<<< orphan*/  prc64; int /*<<< orphan*/  fcruc; int /*<<< orphan*/  xofftxc; int /*<<< orphan*/  xoffrxc; int /*<<< orphan*/  xontxc; int /*<<< orphan*/  xonrxc; int /*<<< orphan*/  rlec; int /*<<< orphan*/  htdpmc; int /*<<< orphan*/  sec; int /*<<< orphan*/  tncrs; int /*<<< orphan*/  dc; int /*<<< orphan*/  colc; int /*<<< orphan*/  latecol; int /*<<< orphan*/  mcc; int /*<<< orphan*/  ecol; int /*<<< orphan*/  scc; int /*<<< orphan*/  mpc; int /*<<< orphan*/  rxerrc; int /*<<< orphan*/  symerrs; int /*<<< orphan*/  algnerrc; int /*<<< orphan*/  crcerrs; } ;
struct igc_adapter {TYPE_1__ stats; struct igc_hw hw; } ;
struct ethtool_regs {unsigned int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_CONNSW ; 
 int /*<<< orphan*/  IGC_CTRL ; 
 int /*<<< orphan*/  IGC_CTRL_EXT ; 
 int /*<<< orphan*/  IGC_EECD ; 
 int /*<<< orphan*/  IGC_EIAC ; 
 int /*<<< orphan*/  IGC_EIAM ; 
 int /*<<< orphan*/  IGC_EICS ; 
 int /*<<< orphan*/  IGC_EIMC ; 
 int /*<<< orphan*/  IGC_EIMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IGC_FCAH ; 
 int /*<<< orphan*/  IGC_FCAL ; 
 int /*<<< orphan*/  IGC_FCRTH ; 
 int /*<<< orphan*/  IGC_FCRTL ; 
 int /*<<< orphan*/  IGC_FCRTV ; 
 int /*<<< orphan*/  IGC_FCTTV ; 
 int /*<<< orphan*/  IGC_IAC ; 
 int /*<<< orphan*/  IGC_IAM ; 
 int /*<<< orphan*/  IGC_ICS ; 
 int /*<<< orphan*/  IGC_IMC ; 
 int /*<<< orphan*/  IGC_IMS ; 
 int /*<<< orphan*/  IGC_MDIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  IGC_RCTL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int IGC_REGS_LEN ; 
 int /*<<< orphan*/  IGC_RFCTL ; 
 int /*<<< orphan*/  IGC_RLPML ; 
 int /*<<< orphan*/  IGC_RXCSUM ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  IGC_STATUS ; 
 int /*<<< orphan*/  IGC_TCTL ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  IGC_TIPG ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ ,int) ; 
 struct igc_adapter* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct net_device *netdev,
			 struct ethtool_regs *regs, void *p)
{
	struct igc_adapter *adapter = FUNC18(netdev);
	struct igc_hw *hw = &adapter->hw;
	u32 *regs_buff = p;
	u8 i;

	FUNC17(p, 0, IGC_REGS_LEN * sizeof(u32));

	regs->version = (1u << 24) | (hw->revision_id << 16) | hw->device_id;

	/* General Registers */
	regs_buff[0] = FUNC19(IGC_CTRL);
	regs_buff[1] = FUNC19(IGC_STATUS);
	regs_buff[2] = FUNC19(IGC_CTRL_EXT);
	regs_buff[3] = FUNC19(IGC_MDIC);
	regs_buff[4] = FUNC19(IGC_CONNSW);

	/* NVM Register */
	regs_buff[5] = FUNC19(IGC_EECD);

	/* Interrupt */
	/* Reading EICS for EICR because they read the
	 * same but EICS does not clear on read
	 */
	regs_buff[6] = FUNC19(IGC_EICS);
	regs_buff[7] = FUNC19(IGC_EICS);
	regs_buff[8] = FUNC19(IGC_EIMS);
	regs_buff[9] = FUNC19(IGC_EIMC);
	regs_buff[10] = FUNC19(IGC_EIAC);
	regs_buff[11] = FUNC19(IGC_EIAM);
	/* Reading ICS for ICR because they read the
	 * same but ICS does not clear on read
	 */
	regs_buff[12] = FUNC19(IGC_ICS);
	regs_buff[13] = FUNC19(IGC_ICS);
	regs_buff[14] = FUNC19(IGC_IMS);
	regs_buff[15] = FUNC19(IGC_IMC);
	regs_buff[16] = FUNC19(IGC_IAC);
	regs_buff[17] = FUNC19(IGC_IAM);

	/* Flow Control */
	regs_buff[18] = FUNC19(IGC_FCAL);
	regs_buff[19] = FUNC19(IGC_FCAH);
	regs_buff[20] = FUNC19(IGC_FCTTV);
	regs_buff[21] = FUNC19(IGC_FCRTL);
	regs_buff[22] = FUNC19(IGC_FCRTH);
	regs_buff[23] = FUNC19(IGC_FCRTV);

	/* Receive */
	regs_buff[24] = FUNC19(IGC_RCTL);
	regs_buff[25] = FUNC19(IGC_RXCSUM);
	regs_buff[26] = FUNC19(IGC_RLPML);
	regs_buff[27] = FUNC19(IGC_RFCTL);

	/* Transmit */
	regs_buff[28] = FUNC19(IGC_TCTL);
	regs_buff[29] = FUNC19(IGC_TIPG);

	/* Wake Up */

	/* MAC */

	/* Statistics */
	regs_buff[30] = adapter->stats.crcerrs;
	regs_buff[31] = adapter->stats.algnerrc;
	regs_buff[32] = adapter->stats.symerrs;
	regs_buff[33] = adapter->stats.rxerrc;
	regs_buff[34] = adapter->stats.mpc;
	regs_buff[35] = adapter->stats.scc;
	regs_buff[36] = adapter->stats.ecol;
	regs_buff[37] = adapter->stats.mcc;
	regs_buff[38] = adapter->stats.latecol;
	regs_buff[39] = adapter->stats.colc;
	regs_buff[40] = adapter->stats.dc;
	regs_buff[41] = adapter->stats.tncrs;
	regs_buff[42] = adapter->stats.sec;
	regs_buff[43] = adapter->stats.htdpmc;
	regs_buff[44] = adapter->stats.rlec;
	regs_buff[45] = adapter->stats.xonrxc;
	regs_buff[46] = adapter->stats.xontxc;
	regs_buff[47] = adapter->stats.xoffrxc;
	regs_buff[48] = adapter->stats.xofftxc;
	regs_buff[49] = adapter->stats.fcruc;
	regs_buff[50] = adapter->stats.prc64;
	regs_buff[51] = adapter->stats.prc127;
	regs_buff[52] = adapter->stats.prc255;
	regs_buff[53] = adapter->stats.prc511;
	regs_buff[54] = adapter->stats.prc1023;
	regs_buff[55] = adapter->stats.prc1522;
	regs_buff[56] = adapter->stats.gprc;
	regs_buff[57] = adapter->stats.bprc;
	regs_buff[58] = adapter->stats.mprc;
	regs_buff[59] = adapter->stats.gptc;
	regs_buff[60] = adapter->stats.gorc;
	regs_buff[61] = adapter->stats.gotc;
	regs_buff[62] = adapter->stats.rnbc;
	regs_buff[63] = adapter->stats.ruc;
	regs_buff[64] = adapter->stats.rfc;
	regs_buff[65] = adapter->stats.roc;
	regs_buff[66] = adapter->stats.rjc;
	regs_buff[67] = adapter->stats.mgprc;
	regs_buff[68] = adapter->stats.mgpdc;
	regs_buff[69] = adapter->stats.mgptc;
	regs_buff[70] = adapter->stats.tor;
	regs_buff[71] = adapter->stats.tot;
	regs_buff[72] = adapter->stats.tpr;
	regs_buff[73] = adapter->stats.tpt;
	regs_buff[74] = adapter->stats.ptc64;
	regs_buff[75] = adapter->stats.ptc127;
	regs_buff[76] = adapter->stats.ptc255;
	regs_buff[77] = adapter->stats.ptc511;
	regs_buff[78] = adapter->stats.ptc1023;
	regs_buff[79] = adapter->stats.ptc1522;
	regs_buff[80] = adapter->stats.mptc;
	regs_buff[81] = adapter->stats.bptc;
	regs_buff[82] = adapter->stats.tsctc;
	regs_buff[83] = adapter->stats.iac;
	regs_buff[84] = adapter->stats.rpthc;
	regs_buff[85] = adapter->stats.hgptc;
	regs_buff[86] = adapter->stats.hgorc;
	regs_buff[87] = adapter->stats.hgotc;
	regs_buff[88] = adapter->stats.lenerrs;
	regs_buff[89] = adapter->stats.scvpc;
	regs_buff[90] = adapter->stats.hrmpc;

	for (i = 0; i < 4; i++)
		regs_buff[91 + i] = FUNC19(FUNC10(i));
	for (i = 0; i < 4; i++)
		regs_buff[95 + i] = FUNC19(FUNC1(i));
	for (i = 0; i < 4; i++)
		regs_buff[99 + i] = FUNC19(FUNC5(i));
	for (i = 0; i < 4; i++)
		regs_buff[103 + i] = FUNC19(FUNC4(i));
	for (i = 0; i < 4; i++)
		regs_buff[107 + i] = FUNC19(FUNC7(i));
	for (i = 0; i < 4; i++)
		regs_buff[111 + i] = FUNC19(FUNC6(i));
	for (i = 0; i < 4; i++)
		regs_buff[115 + i] = FUNC19(FUNC8(i));
	for (i = 0; i < 4; i++)
		regs_buff[119 + i] = FUNC19(FUNC9(i));

	for (i = 0; i < 10; i++)
		regs_buff[123 + i] = FUNC19(FUNC0(i));
	for (i = 0; i < 16; i++)
		regs_buff[139 + i] = FUNC19(FUNC3(i));
	for (i = 0; i < 16; i++)
		regs_buff[145 + i] = FUNC19(FUNC2(i));

	for (i = 0; i < 4; i++)
		regs_buff[149 + i] = FUNC19(FUNC12(i));
	for (i = 0; i < 4; i++)
		regs_buff[152 + i] = FUNC19(FUNC11(i));
	for (i = 0; i < 4; i++)
		regs_buff[156 + i] = FUNC19(FUNC14(i));
	for (i = 0; i < 4; i++)
		regs_buff[160 + i] = FUNC19(FUNC13(i));
	for (i = 0; i < 4; i++)
		regs_buff[164 + i] = FUNC19(FUNC15(i));
	for (i = 0; i < 4; i++)
		regs_buff[168 + i] = FUNC19(FUNC16(i));
}