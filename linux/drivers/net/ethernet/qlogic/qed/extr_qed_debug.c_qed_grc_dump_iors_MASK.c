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
typedef  size_t u8 ;
typedef  int u32 ;
struct storm_defs {int /*<<< orphan*/  letter; scalar_t__ sem_fast_mem_addr; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef  enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IORS_PER_SET ; 
 int FUNC1 (size_t) ; 
 size_t MAX_DBG_STORMS ; 
 size_t NUM_IOR_SETS ; 
 scalar_t__ SEM_FAST_REG_STORM_REG_FILE ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int*,int,char*,int,int /*<<< orphan*/ ,int,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int) ; 
 struct storm_defs* s_storm_defs ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static u32 FUNC5(struct qed_hwfn *p_hwfn,
			     struct qed_ptt *p_ptt, u32 *dump_buf, bool dump)
{
	char buf[10] = "IOR_SET_?";
	u32 addr, offset = 0;
	u8 storm_id, set_id;

	for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
		struct storm_defs *storm = &s_storm_defs[storm_id];

		if (!FUNC3(p_hwfn,
					       (enum dbg_storms)storm_id))
			continue;

		for (set_id = 0; set_id < NUM_IOR_SETS; set_id++) {
			addr = FUNC0(storm->sem_fast_mem_addr +
					       SEM_FAST_REG_STORM_REG_FILE) +
			       FUNC1(set_id);
			if (FUNC4(buf) > 0)
				buf[FUNC4(buf) - 1] = '0' + set_id;
			offset += FUNC2(p_hwfn,
						   p_ptt,
						   dump_buf + offset,
						   dump,
						   buf,
						   addr,
						   IORS_PER_SET,
						   false,
						   32,
						   false,
						   "ior",
						   true,
						   storm->letter);
		}
	}

	return offset;
}