
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_eq {int q_len; } ;
struct hinic_aeq_elem {int desc; } ;


 struct hinic_aeq_elem* GET_AEQ_ELEM (struct hinic_eq*,int) ;
 int cpu_to_be32 (int ) ;
 int wmb () ;

__attribute__((used)) static void aeq_elements_init(struct hinic_eq *eq, u32 init_val)
{
 struct hinic_aeq_elem *aeqe;
 int i;

 for (i = 0; i < eq->q_len; i++) {
  aeqe = GET_AEQ_ELEM(eq, i);
  aeqe->desc = cpu_to_be32(init_val);
 }

 wmb();
}
