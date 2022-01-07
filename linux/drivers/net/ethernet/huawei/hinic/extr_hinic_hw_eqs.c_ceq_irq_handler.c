
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_eq {int q_len; int wrapped; int cons_idx; } ;
struct hinic_ceqs {int dummy; } ;


 int * GET_CURR_CEQ_ELEM (struct hinic_eq*) ;
 int HINIC_EQ_ELEM_DESC_GET (int ,int ) ;
 int WRAPPED ;
 int be32_to_cpu (int ) ;
 int ceq_event_handler (struct hinic_ceqs*,int ) ;
 struct hinic_ceqs* ceq_to_ceqs (struct hinic_eq*) ;

__attribute__((used)) static void ceq_irq_handler(struct hinic_eq *eq)
{
 struct hinic_ceqs *ceqs = ceq_to_ceqs(eq);
 u32 ceqe;
 int i;

 for (i = 0; i < eq->q_len; i++) {
  ceqe = *(GET_CURR_CEQ_ELEM(eq));


  ceqe = be32_to_cpu(ceqe);


  if (HINIC_EQ_ELEM_DESC_GET(ceqe, WRAPPED) == eq->wrapped)
   break;

  ceq_event_handler(ceqs, ceqe);

  eq->cons_idx++;

  if (eq->cons_idx == eq->q_len) {
   eq->cons_idx = 0;
   eq->wrapped = !eq->wrapped;
  }
 }
}
