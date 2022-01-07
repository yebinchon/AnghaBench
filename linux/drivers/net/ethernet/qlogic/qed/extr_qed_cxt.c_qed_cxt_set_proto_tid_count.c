
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct qed_tid_seg {int has_fl_mem; size_t type; int count; } ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {TYPE_1__* conn_cfg; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
struct TYPE_2__ {struct qed_tid_seg* tid_seg; } ;



__attribute__((used)) static void qed_cxt_set_proto_tid_count(struct qed_hwfn *p_hwfn,
     enum protocol_type proto,
     u8 seg,
     u8 seg_type, u32 count, bool has_fl)
{
 struct qed_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 struct qed_tid_seg *p_seg = &p_mngr->conn_cfg[proto].tid_seg[seg];

 p_seg->count = count;
 p_seg->has_fl_mem = has_fl;
 p_seg->type = seg_type;
}
