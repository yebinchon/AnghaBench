
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_napi {int napi; } ;
struct bnxt {int cp_nr_rings; struct bnxt_napi** bnapi; } ;


 int napi_hash_del (int *) ;
 int netif_napi_del (int *) ;
 int synchronize_net () ;

__attribute__((used)) static void bnxt_del_napi(struct bnxt *bp)
{
 int i;

 if (!bp->bnapi)
  return;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_napi *bnapi = bp->bnapi[i];

  napi_hash_del(&bnapi->napi);
  netif_napi_del(&bnapi->napi);
 }



 synchronize_net();
}
