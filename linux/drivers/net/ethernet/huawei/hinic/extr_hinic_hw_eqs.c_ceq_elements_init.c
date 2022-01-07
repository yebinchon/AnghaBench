
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_eq {int q_len; } ;


 int * GET_CEQ_ELEM (struct hinic_eq*,int) ;
 int cpu_to_be32 (int ) ;
 int wmb () ;

__attribute__((used)) static void ceq_elements_init(struct hinic_eq *eq, u32 init_val)
{
 u32 *ceqe;
 int i;

 for (i = 0; i < eq->q_len; i++) {
  ceqe = GET_CEQ_ELEM(eq, i);
  *(ceqe) = cpu_to_be32(init_val);
 }

 wmb();
}
