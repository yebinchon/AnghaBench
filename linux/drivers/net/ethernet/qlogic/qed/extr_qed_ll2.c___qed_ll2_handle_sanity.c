
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qed_ll2_info {int mutex; scalar_t__ b_active; } ;
struct qed_hwfn {struct qed_ll2_info* p_ll2_info; } ;


 size_t QED_MAX_NUM_OF_LL2_CONNECTIONS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct qed_ll2_info *__qed_ll2_handle_sanity(struct qed_hwfn *p_hwfn,
          u8 connection_handle,
          bool b_lock,
          bool b_only_active)
{
 struct qed_ll2_info *p_ll2_conn, *p_ret = ((void*)0);

 if (connection_handle >= QED_MAX_NUM_OF_LL2_CONNECTIONS)
  return ((void*)0);

 if (!p_hwfn->p_ll2_info)
  return ((void*)0);

 p_ll2_conn = &p_hwfn->p_ll2_info[connection_handle];

 if (b_only_active) {
  if (b_lock)
   mutex_lock(&p_ll2_conn->mutex);
  if (p_ll2_conn->b_active)
   p_ret = p_ll2_conn;
  if (b_lock)
   mutex_unlock(&p_ll2_conn->mutex);
 } else {
  p_ret = p_ll2_conn;
 }

 return p_ret;
}
