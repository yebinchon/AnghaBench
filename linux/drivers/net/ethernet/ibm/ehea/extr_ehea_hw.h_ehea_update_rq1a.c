
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_qp {TYPE_1__ epas; } ;


 int EHEA_BMASK_SET (int ,int ) ;
 int QPTEMM_OFFSET (int ) ;
 int QPX_RQ3A_VALUE ;
 int epa_store_acc (struct h_epa,int ,int ) ;
 int qpx_rq1a ;

__attribute__((used)) static inline void ehea_update_rq1a(struct ehea_qp *qp, u16 nr_wqes)
{
 struct h_epa epa = qp->epas.kernel;
 epa_store_acc(epa, QPTEMM_OFFSET(qpx_rq1a),
        EHEA_BMASK_SET(QPX_RQ3A_VALUE, nr_wqes));
}
