
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qed_src_iids {int pf_cids; int per_vf_cids; } ;
struct qed_cxt_mngr {scalar_t__ arfs_count; TYPE_1__* conn_cfg; } ;
struct TYPE_2__ {scalar_t__ cids_per_vf; scalar_t__ cid_count; } ;


 size_t MAX_CONN_TYPES ;
 int src_proto (size_t) ;

__attribute__((used)) static void qed_cxt_src_iids(struct qed_cxt_mngr *p_mngr,
        struct qed_src_iids *iids)
{
 u32 i;

 for (i = 0; i < MAX_CONN_TYPES; i++) {
  if (!src_proto(i))
   continue;

  iids->pf_cids += p_mngr->conn_cfg[i].cid_count;
  iids->per_vf_cids += p_mngr->conn_cfg[i].cids_per_vf;
 }


 iids->pf_cids += p_mngr->arfs_count;
}
