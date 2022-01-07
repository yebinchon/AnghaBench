
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union event_ring_element {int dummy; } event_ring_element ;
typedef int u16 ;
struct qed_hwfn {struct qed_eq* p_eq; int cdev; } ;
struct qed_eq {int p_fw_cons; int eq_sb_index; int chain; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_MODE_PBL ;
 int QED_CHAIN_USE_TO_PRODUCE ;
 int kfree (struct qed_eq*) ;
 struct qed_eq* kzalloc (int,int ) ;
 scalar_t__ qed_chain_alloc (int ,int ,int ,int ,int ,int,int *,int *) ;
 int qed_eq_completion ;
 int qed_int_register_cb (struct qed_hwfn*,int ,struct qed_eq*,int *,int *) ;

int qed_eq_alloc(struct qed_hwfn *p_hwfn, u16 num_elem)
{
 struct qed_eq *p_eq;


 p_eq = kzalloc(sizeof(*p_eq), GFP_KERNEL);
 if (!p_eq)
  return -ENOMEM;


 if (qed_chain_alloc(p_hwfn->cdev,
       QED_CHAIN_USE_TO_PRODUCE,
       QED_CHAIN_MODE_PBL,
       QED_CHAIN_CNT_TYPE_U16,
       num_elem,
       sizeof(union event_ring_element),
       &p_eq->chain, ((void*)0)))
  goto eq_allocate_fail;


 qed_int_register_cb(p_hwfn, qed_eq_completion,
       p_eq, &p_eq->eq_sb_index, &p_eq->p_fw_cons);

 p_hwfn->p_eq = p_eq;
 return 0;

eq_allocate_fail:
 kfree(p_eq);
 return -ENOMEM;
}
