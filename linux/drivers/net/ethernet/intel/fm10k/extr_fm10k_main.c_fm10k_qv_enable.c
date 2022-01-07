
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int itr; } ;
struct fm10k_q_vector {int itr; TYPE_1__ rx; TYPE_1__ tx; } ;


 int FM10K_ITR_ENABLE ;
 int FM10K_ITR_INTERVAL1_SHIFT ;
 int FM10K_ITR_MAX ;
 int fm10k_update_itr (TYPE_1__*) ;
 int writel (int,int ) ;

__attribute__((used)) static void fm10k_qv_enable(struct fm10k_q_vector *q_vector)
{

 u32 itr = FM10K_ITR_ENABLE;


 fm10k_update_itr(&q_vector->tx);


 fm10k_update_itr(&q_vector->rx);


 itr |= (q_vector->tx.itr & FM10K_ITR_MAX);


 itr |= (q_vector->rx.itr & FM10K_ITR_MAX) << FM10K_ITR_INTERVAL1_SHIFT;


 writel(itr, q_vector->itr);
}
