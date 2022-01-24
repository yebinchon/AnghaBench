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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {size_t chip_id; scalar_t__* block_in_reset; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_block {int dummy; } ;
struct block_defs {scalar_t__* dbg_client_id; int /*<<< orphan*/  dbg_enable_addr; int /*<<< orphan*/  name; } ;
typedef  enum block_id { ____Placeholder_block_id } block_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_BUS_FRAME_MODE_8HW_0ST ; 
 int DBG_BUS_TARGET_ID_INT_BUF ; 
 int /*<<< orphan*/  DBG_REG_CALENDAR_OUT_DATA ; 
 int /*<<< orphan*/  DBG_REG_DBG_BLOCK_ON ; 
 int /*<<< orphan*/  DBG_REG_DEBUG_TARGET ; 
 int /*<<< orphan*/  DBG_REG_FULL_MODE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t MAX_BLOCK_ID ; 
 scalar_t__ MAX_DBG_BUS_CLIENTS ; 
 size_t FUNC3 (struct dbg_bus_block*) ; 
 int /*<<< orphan*/  SPLIT_TYPE_NONE ; 
 size_t STATIC_DEBUG_LINE_DWORDS ; 
 struct dbg_bus_block* FUNC4 (struct qed_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_hwfn*,struct qed_ptt*,int,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (struct qed_hwfn*,struct qed_ptt*,size_t*,int,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (struct qed_hwfn*,size_t*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 struct block_defs** s_block_defs ; 

__attribute__((used)) static u32 FUNC15(struct qed_hwfn *p_hwfn,
				     struct qed_ptt *p_ptt,
				     u32 *dump_buf, bool dump)
{
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	u32 block_id, line_id, offset = 0;

	/* Don't dump static debug if a debug bus recording is in progress */
	if (dump && FUNC13(p_hwfn, p_ptt, DBG_REG_DBG_BLOCK_ON))
		return 0;

	if (dump) {
		/* Disable all blocks debug output */
		for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
			struct block_defs *block = s_block_defs[block_id];

			if (block->dbg_client_id[dev_data->chip_id] !=
			    MAX_DBG_BUS_CLIENTS)
				FUNC14(p_hwfn, p_ptt, block->dbg_enable_addr,
				       0);
		}

		FUNC8(p_hwfn, p_ptt);
		FUNC9(p_hwfn,
					 p_ptt, DBG_BUS_FRAME_MODE_8HW_0ST);
		FUNC14(p_hwfn,
		       p_ptt, DBG_REG_DEBUG_TARGET, DBG_BUS_TARGET_ID_INT_BUF);
		FUNC14(p_hwfn, p_ptt, DBG_REG_FULL_MODE, 1);
		FUNC7(p_hwfn, p_ptt, true);
	}

	/* Dump all static debug lines for each relevant block */
	for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
		struct block_defs *block = s_block_defs[block_id];
		struct dbg_bus_block *block_desc;
		u32 block_dwords, addr, len;
		u8 dbg_client_id;

		if (block->dbg_client_id[dev_data->chip_id] ==
		    MAX_DBG_BUS_CLIENTS)
			continue;

		block_desc = FUNC4(p_hwfn,
						    (enum block_id)block_id);
		block_dwords = FUNC3(block_desc) *
			       STATIC_DEBUG_LINE_DWORDS;

		/* Dump static section params */
		offset += FUNC12(p_hwfn,
					       dump_buf + offset,
					       dump,
					       block->name,
					       0,
					       block_dwords,
					       32, false, "STATIC", false, 0);

		if (!dump) {
			offset += block_dwords;
			continue;
		}

		/* If all lines are invalid - dump zeros */
		if (dev_data->block_in_reset[block_id]) {
			FUNC5(dump_buf + offset, 0,
			       FUNC2(block_dwords));
			offset += block_dwords;
			continue;
		}

		/* Enable block's client */
		dbg_client_id = block->dbg_client_id[dev_data->chip_id];
		FUNC6(p_hwfn,
				       p_ptt,
				       FUNC0(dbg_client_id));

		addr = FUNC1(DBG_REG_CALENDAR_OUT_DATA);
		len = STATIC_DEBUG_LINE_DWORDS;
		for (line_id = 0; line_id < (u32)FUNC3(block_desc);
		     line_id++) {
			/* Configure debug line ID */
			FUNC10(p_hwfn,
					    p_ptt,
					    (enum block_id)block_id,
					    (u8)line_id, 0xf, 0, 0, 0);

			/* Read debug line info */
			offset += FUNC11(p_hwfn,
							  p_ptt,
							  dump_buf + offset,
							  dump,
							  addr,
							  len,
							  true, SPLIT_TYPE_NONE,
							  0);
		}

		/* Disable block's client and debug output */
		FUNC6(p_hwfn, p_ptt, 0);
		FUNC14(p_hwfn, p_ptt, block->dbg_enable_addr, 0);
	}

	if (dump) {
		FUNC7(p_hwfn, p_ptt, false);
		FUNC6(p_hwfn, p_ptt, 0);
	}

	return offset;
}