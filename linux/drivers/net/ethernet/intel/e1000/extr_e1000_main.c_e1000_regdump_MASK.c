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
typedef  int /*<<< orphan*/  u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int /*<<< orphan*/  ERT ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  RDBAH0 ; 
 int /*<<< orphan*/  RDBAL0 ; 
 int /*<<< orphan*/  RDFH ; 
 int /*<<< orphan*/  RDFHS ; 
 int /*<<< orphan*/  RDFPC ; 
 int /*<<< orphan*/  RDFT ; 
 int /*<<< orphan*/  RDFTS ; 
 int /*<<< orphan*/  RDH ; 
 int /*<<< orphan*/  RDLEN ; 
 int /*<<< orphan*/  RDT ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TADV ; 
 int /*<<< orphan*/  TARC0 ; 
 int /*<<< orphan*/  TARC1 ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  TDBAH ; 
 int /*<<< orphan*/  TDBAH1 ; 
 int /*<<< orphan*/  TDBAL ; 
 int /*<<< orphan*/  TDBAL1 ; 
 int /*<<< orphan*/  TDFH ; 
 int /*<<< orphan*/  TDFHS ; 
 int /*<<< orphan*/  TDFPC ; 
 int /*<<< orphan*/  TDFT ; 
 int /*<<< orphan*/  TDFTS ; 
 int /*<<< orphan*/  TDH ; 
 int /*<<< orphan*/  TDH1 ; 
 int /*<<< orphan*/  TDLEN ; 
 int /*<<< orphan*/  TDLEN1 ; 
 int /*<<< orphan*/  TDT ; 
 int /*<<< orphan*/  TDT1 ; 
 int /*<<< orphan*/  TIDV ; 
 int /*<<< orphan*/  TXDCTL ; 
 int /*<<< orphan*/  TXDCTL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 regs[NUM_REGS];
	u32 *regs_buff = regs;
	int i = 0;

	static const char * const reg_name[] = {
		"CTRL",  "STATUS",
		"RCTL", "RDLEN", "RDH", "RDT", "RDTR",
		"TCTL", "TDBAL", "TDBAH", "TDLEN", "TDH", "TDT",
		"TIDV", "TXDCTL", "TADV", "TARC0",
		"TDBAL1", "TDBAH1", "TDLEN1", "TDH1", "TDT1",
		"TXDCTL1", "TARC1",
		"CTRL_EXT", "ERT", "RDBAL", "RDBAH",
		"TDFH", "TDFT", "TDFHS", "TDFTS", "TDFPC",
		"RDFH", "RDFT", "RDFHS", "RDFTS", "RDFPC"
	};

	regs_buff[0]  = FUNC0(CTRL);
	regs_buff[1]  = FUNC0(STATUS);

	regs_buff[2]  = FUNC0(RCTL);
	regs_buff[3]  = FUNC0(RDLEN);
	regs_buff[4]  = FUNC0(RDH);
	regs_buff[5]  = FUNC0(RDT);
	regs_buff[6]  = FUNC0(RDTR);

	regs_buff[7]  = FUNC0(TCTL);
	regs_buff[8]  = FUNC0(TDBAL);
	regs_buff[9]  = FUNC0(TDBAH);
	regs_buff[10] = FUNC0(TDLEN);
	regs_buff[11] = FUNC0(TDH);
	regs_buff[12] = FUNC0(TDT);
	regs_buff[13] = FUNC0(TIDV);
	regs_buff[14] = FUNC0(TXDCTL);
	regs_buff[15] = FUNC0(TADV);
	regs_buff[16] = FUNC0(TARC0);

	regs_buff[17] = FUNC0(TDBAL1);
	regs_buff[18] = FUNC0(TDBAH1);
	regs_buff[19] = FUNC0(TDLEN1);
	regs_buff[20] = FUNC0(TDH1);
	regs_buff[21] = FUNC0(TDT1);
	regs_buff[22] = FUNC0(TXDCTL1);
	regs_buff[23] = FUNC0(TARC1);
	regs_buff[24] = FUNC0(CTRL_EXT);
	regs_buff[25] = FUNC0(ERT);
	regs_buff[26] = FUNC0(RDBAL0);
	regs_buff[27] = FUNC0(RDBAH0);
	regs_buff[28] = FUNC0(TDFH);
	regs_buff[29] = FUNC0(TDFT);
	regs_buff[30] = FUNC0(TDFHS);
	regs_buff[31] = FUNC0(TDFTS);
	regs_buff[32] = FUNC0(TDFPC);
	regs_buff[33] = FUNC0(RDFH);
	regs_buff[34] = FUNC0(RDFT);
	regs_buff[35] = FUNC0(RDFHS);
	regs_buff[36] = FUNC0(RDFTS);
	regs_buff[37] = FUNC0(RDFPC);

	FUNC1("Register dump\n");
	for (i = 0; i < NUM_REGS; i++)
		FUNC1("%-15s  %08x\n", reg_name[i], regs_buff[i]);
}