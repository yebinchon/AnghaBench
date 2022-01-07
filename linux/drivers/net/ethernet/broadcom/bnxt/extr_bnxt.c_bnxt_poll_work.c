
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_napi {int dummy; } ;
struct bnxt_cp_ring_info {int cp_raw_cons; int cp_db; struct bnxt_napi* bnapi; } ;
struct bnxt {int dummy; } ;


 int __bnxt_poll_work (struct bnxt*,struct bnxt_cp_ring_info*,int) ;
 int __bnxt_poll_work_done (struct bnxt*,struct bnxt_napi*) ;
 int bnxt_db_cq (struct bnxt*,int *,int ) ;

__attribute__((used)) static int bnxt_poll_work(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
     int budget)
{
 struct bnxt_napi *bnapi = cpr->bnapi;
 int rx_pkts;

 rx_pkts = __bnxt_poll_work(bp, cpr, budget);





 bnxt_db_cq(bp, &cpr->cp_db, cpr->cp_raw_cons);

 __bnxt_poll_work_done(bp, bnapi);
 return rx_pkts;
}
