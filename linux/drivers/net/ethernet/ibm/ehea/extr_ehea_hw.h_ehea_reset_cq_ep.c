
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_cq {TYPE_1__ epas; } ;


 int CQTEMM_OFFSET (int ) ;
 int CQX_EP_EVENT_PENDING ;
 int EHEA_BMASK_SET (int ,int ) ;
 int cqx_ep ;
 int epa_store_acc (struct h_epa,int ,int ) ;

__attribute__((used)) static inline void ehea_reset_cq_ep(struct ehea_cq *my_cq)
{
 struct h_epa epa = my_cq->epas.kernel;
 epa_store_acc(epa, CQTEMM_OFFSET(cqx_ep),
        EHEA_BMASK_SET(CQX_EP_EVENT_PENDING, 0));
}
