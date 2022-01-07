
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_spq; } ;
typedef int qed_spq_async_comp_cb ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
struct TYPE_2__ {int * async_comp_cb; } ;


 int EINVAL ;
 int MAX_PROTOCOL_TYPE ;

int
qed_spq_register_async_cb(struct qed_hwfn *p_hwfn,
     enum protocol_type protocol_id,
     qed_spq_async_comp_cb cb)
{
 if (!p_hwfn->p_spq || (protocol_id >= MAX_PROTOCOL_TYPE))
  return -EINVAL;

 p_hwfn->p_spq->async_comp_cb[protocol_id] = cb;
 return 0;
}
