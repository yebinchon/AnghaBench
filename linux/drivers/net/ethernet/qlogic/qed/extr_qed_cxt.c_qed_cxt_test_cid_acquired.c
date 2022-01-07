
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {struct qed_cid_acquired_map** acquired_vf; struct qed_cid_acquired_map* acquired; } ;
struct qed_cid_acquired_map {scalar_t__ start_cid; scalar_t__ max_count; int cid_map; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,size_t) ;
 int MAX_CONN_TYPES ;
 size_t QED_CXT_PF_CID ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static bool qed_cxt_test_cid_acquired(struct qed_hwfn *p_hwfn,
          u32 cid,
          u8 vfid,
          enum protocol_type *p_type,
          struct qed_cid_acquired_map **pp_map)
{
 struct qed_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 u32 rel_cid;


 for (*p_type = 0; *p_type < MAX_CONN_TYPES; (*p_type)++) {
  if (vfid == QED_CXT_PF_CID)
   *pp_map = &p_mngr->acquired[*p_type];
  else
   *pp_map = &p_mngr->acquired_vf[*p_type][vfid];

  if (!((*pp_map)->cid_map))
   continue;
  if (cid >= (*pp_map)->start_cid &&
      cid < (*pp_map)->start_cid + (*pp_map)->max_count)
   break;
 }

 if (*p_type == MAX_CONN_TYPES) {
  DP_NOTICE(p_hwfn, "Invalid CID %d vfid %02x", cid, vfid);
  goto fail;
 }

 rel_cid = cid - (*pp_map)->start_cid;
 if (!test_bit(rel_cid, (*pp_map)->cid_map)) {
  DP_NOTICE(p_hwfn, "CID %d [vifd %02x] not acquired",
     cid, vfid);
  goto fail;
 }

 return 1;
fail:
 *p_type = MAX_CONN_TYPES;
 *pp_map = ((void*)0);
 return 0;
}
