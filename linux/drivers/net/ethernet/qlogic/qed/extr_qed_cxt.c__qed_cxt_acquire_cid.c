
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {struct qed_cid_acquired_map** acquired_vf; struct qed_cid_acquired_map* acquired; } ;
struct qed_cid_acquired_map {scalar_t__ max_count; scalar_t__ start_cid; int cid_map; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,scalar_t__,size_t,int) ;
 int EINVAL ;
 int MAX_CONN_TYPES ;
 size_t MAX_NUM_VFS ;
 size_t QED_CXT_PF_CID ;
 int QED_MSG_CXT ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

int _qed_cxt_acquire_cid(struct qed_hwfn *p_hwfn,
    enum protocol_type type, u32 *p_cid, u8 vfid)
{
 struct qed_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 struct qed_cid_acquired_map *p_map;
 u32 rel_cid;

 if (type >= MAX_CONN_TYPES) {
  DP_NOTICE(p_hwfn, "Invalid protocol type %d", type);
  return -EINVAL;
 }

 if (vfid >= MAX_NUM_VFS && vfid != QED_CXT_PF_CID) {
  DP_NOTICE(p_hwfn, "VF [%02x] is out of range\n", vfid);
  return -EINVAL;
 }


 if (vfid == QED_CXT_PF_CID)
  p_map = &p_mngr->acquired[type];
 else
  p_map = &p_mngr->acquired_vf[type][vfid];

 if (!p_map->cid_map) {
  DP_NOTICE(p_hwfn, "Invalid protocol type %d", type);
  return -EINVAL;
 }

 rel_cid = find_first_zero_bit(p_map->cid_map, p_map->max_count);

 if (rel_cid >= p_map->max_count) {
  DP_NOTICE(p_hwfn, "no CID available for protocol %d\n", type);
  return -EINVAL;
 }

 __set_bit(rel_cid, p_map->cid_map);

 *p_cid = rel_cid + p_map->start_cid;

 DP_VERBOSE(p_hwfn, QED_MSG_CXT,
     "Acquired cid 0x%08x [rel. %08x] vfid %02x type %d\n",
     *p_cid, rel_cid, vfid, type);

 return 0;
}
