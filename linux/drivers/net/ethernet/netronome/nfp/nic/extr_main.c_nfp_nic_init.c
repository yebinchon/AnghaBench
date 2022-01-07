
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_pf {scalar_t__ max_data_vnics; TYPE_1__* eth_tbl; int cpp; } ;
struct nfp_app {struct nfp_pf* pf; } ;
struct TYPE_2__ {scalar_t__ count; } ;


 int EINVAL ;
 int nfp_err (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int nfp_nic_init(struct nfp_app *app)
{
 struct nfp_pf *pf = app->pf;

 if (pf->eth_tbl && pf->max_data_vnics != pf->eth_tbl->count) {
  nfp_err(pf->cpp, "ETH entries don't match vNICs (%d vs %d)\n",
   pf->max_data_vnics, pf->eth_tbl->count);
  return -EINVAL;
 }

 return 0;
}
