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
typedef  scalar_t__ u32 ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {struct qed_cid_acquired_map** acquired_vf; struct qed_cid_acquired_map* acquired; } ;
struct qed_cid_acquired_map {scalar_t__ max_count; scalar_t__ start_cid; int /*<<< orphan*/  cid_map; } ;
typedef  enum protocol_type { ____Placeholder_protocol_type } protocol_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,size_t,int) ; 
 int EINVAL ; 
 int MAX_CONN_TYPES ; 
 size_t MAX_NUM_VFS ; 
 size_t QED_CXT_PF_CID ; 
 int /*<<< orphan*/  QED_MSG_CXT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct qed_hwfn *p_hwfn,
			 enum protocol_type type, u32 *p_cid, u8 vfid)
{
	struct qed_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
	struct qed_cid_acquired_map *p_map;
	u32 rel_cid;

	if (type >= MAX_CONN_TYPES) {
		FUNC0(p_hwfn, "Invalid protocol type %d", type);
		return -EINVAL;
	}

	if (vfid >= MAX_NUM_VFS && vfid != QED_CXT_PF_CID) {
		FUNC0(p_hwfn, "VF [%02x] is out of range\n", vfid);
		return -EINVAL;
	}

	/* Determine the right map to take this CID from */
	if (vfid == QED_CXT_PF_CID)
		p_map = &p_mngr->acquired[type];
	else
		p_map = &p_mngr->acquired_vf[type][vfid];

	if (!p_map->cid_map) {
		FUNC0(p_hwfn, "Invalid protocol type %d", type);
		return -EINVAL;
	}

	rel_cid = FUNC3(p_map->cid_map, p_map->max_count);

	if (rel_cid >= p_map->max_count) {
		FUNC0(p_hwfn, "no CID available for protocol %d\n", type);
		return -EINVAL;
	}

	FUNC2(rel_cid, p_map->cid_map);

	*p_cid = rel_cid + p_map->start_cid;

	FUNC1(p_hwfn, QED_MSG_CXT,
		   "Acquired cid 0x%08x [rel. %08x] vfid %02x type %d\n",
		   *p_cid, rel_cid, vfid, type);

	return 0;
}