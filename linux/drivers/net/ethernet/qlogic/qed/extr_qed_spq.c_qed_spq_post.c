
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int echo; int protocol_id; int cmd_id; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct qed_spq_entry {scalar_t__ comp_mode; TYPE_3__ elem; int list; struct qed_spq_entry* post_ent; int * queue; int priority; } ;
struct qed_spq {int lock; int unlimited_pending; } ;
struct qed_hwfn {TYPE_1__* cdev; struct qed_spq* p_spq; } ;
struct TYPE_4__ {scalar_t__ recov_in_prog; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ) ;
 int EINVAL ;
 int QED_MSG_SPQ ;
 scalar_t__ QED_SPQ_MODE_EBLOCK ;
 int __qed_spq_return_entry (struct qed_hwfn*,struct qed_spq_entry*) ;
 int kfree (struct qed_spq_entry*) ;
 int list_del (int *) ;
 int qed_spq_add_entry (struct qed_hwfn*,struct qed_spq_entry*,int ) ;
 int qed_spq_block (struct qed_hwfn*,struct qed_spq_entry*,int *,int) ;
 int qed_spq_comp_bmap_update (struct qed_hwfn*,int ) ;
 int qed_spq_fill_entry (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_spq_pend_post (struct qed_hwfn*) ;
 int qed_spq_recov_set_ret_code (struct qed_spq_entry*,int *) ;
 int qed_spq_return_entry (struct qed_hwfn*,struct qed_spq_entry*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int qed_spq_post(struct qed_hwfn *p_hwfn,
   struct qed_spq_entry *p_ent, u8 *fw_return_code)
{
 int rc = 0;
 struct qed_spq *p_spq = p_hwfn ? p_hwfn->p_spq : ((void*)0);
 bool b_ret_ent = 1;
 bool eblock;

 if (!p_hwfn)
  return -EINVAL;

 if (!p_ent) {
  DP_NOTICE(p_hwfn, "Got a NULL pointer\n");
  return -EINVAL;
 }

 if (p_hwfn->cdev->recov_in_prog) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_SPQ,
      "Recovery is in progress. Skip spq post [cmd %02x protocol %02x]\n",
      p_ent->elem.hdr.cmd_id, p_ent->elem.hdr.protocol_id);


  qed_spq_recov_set_ret_code(p_ent, fw_return_code);
  return 0;
 }


 rc = qed_spq_fill_entry(p_hwfn, p_ent);

 spin_lock_bh(&p_spq->lock);


 if (rc)
  goto spq_post_fail;




 eblock = (p_ent->comp_mode == QED_SPQ_MODE_EBLOCK);


 rc = qed_spq_add_entry(p_hwfn, p_ent, p_ent->priority);
 if (rc)
  goto spq_post_fail;

 rc = qed_spq_pend_post(p_hwfn);
 if (rc) {




  b_ret_ent = 0;
  goto spq_post_fail;
 }

 spin_unlock_bh(&p_spq->lock);

 if (eblock) {





  rc = qed_spq_block(p_hwfn, p_ent, fw_return_code,
       p_ent->queue == &p_spq->unlimited_pending);

  if (p_ent->queue == &p_spq->unlimited_pending) {
   struct qed_spq_entry *p_post_ent = p_ent->post_ent;

   kfree(p_ent);


   p_ent = p_post_ent;
  }

  if (rc)
   goto spq_post_fail2;


  qed_spq_return_entry(p_hwfn, p_ent);
 }
 return rc;

spq_post_fail2:
 spin_lock_bh(&p_spq->lock);
 list_del(&p_ent->list);
 qed_spq_comp_bmap_update(p_hwfn, p_ent->elem.hdr.echo);

spq_post_fail:

 if (b_ret_ent)
  __qed_spq_return_entry(p_hwfn, p_ent);
 spin_unlock_bh(&p_spq->lock);

 return rc;
}
