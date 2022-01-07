
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_cq {TYPE_1__ epas; } ;


 int CQTEMM_OFFSET (int ) ;
 int CQX_FECADDER ;
 int EHEA_BMASK_SET (int ,int ) ;
 int cqx_feca ;
 int epa_store_acc (struct h_epa,int ,int ) ;

__attribute__((used)) static inline void ehea_update_feca(struct ehea_cq *cq, u32 nr_cqes)
{
 struct h_epa epa = cq->epas.kernel;
 epa_store_acc(epa, CQTEMM_OFFSET(cqx_feca),
        EHEA_BMASK_SET(CQX_FECADDER, nr_cqes));
}
