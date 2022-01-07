
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qed_ll2_info {size_t my_id; } ;
struct qed_hwfn {struct qed_ll2_info* p_ll2_info; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t QED_MAX_NUM_OF_LL2_CONNECTIONS ;
 struct qed_ll2_info* kcalloc (size_t,int,int ) ;

int qed_ll2_alloc(struct qed_hwfn *p_hwfn)
{
 struct qed_ll2_info *p_ll2_connections;
 u8 i;


 p_ll2_connections = kcalloc(QED_MAX_NUM_OF_LL2_CONNECTIONS,
        sizeof(struct qed_ll2_info), GFP_KERNEL);
 if (!p_ll2_connections) {
  DP_NOTICE(p_hwfn, "Failed to allocate `struct qed_ll2'\n");
  return -ENOMEM;
 }

 for (i = 0; i < QED_MAX_NUM_OF_LL2_CONNECTIONS; i++)
  p_ll2_connections[i].my_id = i;

 p_hwfn->p_ll2_info = p_ll2_connections;
 return 0;
}
