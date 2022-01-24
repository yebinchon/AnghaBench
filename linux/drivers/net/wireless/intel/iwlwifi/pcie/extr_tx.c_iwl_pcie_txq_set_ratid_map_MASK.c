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
typedef  int u32 ;
typedef  int u16 ;
struct iwl_trans_pcie {int scd_base_addr; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int SCD_QUEUE_RA_TID_MAP_RATID_MSK ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int,int) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans, u16 ra_tid,
				 u16 txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	u32 tbl_dw_addr;
	u32 tbl_dw;
	u16 scd_q2ratid;

	scd_q2ratid = ra_tid & SCD_QUEUE_RA_TID_MAP_RATID_MSK;

	tbl_dw_addr = trans_pcie->scd_base_addr +
			FUNC1(txq_id);

	tbl_dw = FUNC2(trans, tbl_dw_addr);

	if (txq_id & 0x1)
		tbl_dw = (scd_q2ratid << 16) | (tbl_dw & 0x0000FFFF);
	else
		tbl_dw = scd_q2ratid | (tbl_dw & 0xFFFF0000);

	FUNC3(trans, tbl_dw_addr, tbl_dw);

	return 0;
}