
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rvu_pfvf {int rxvlan; scalar_t__ minlen; scalar_t__ maxlen; } ;
struct rvu {int dev; } ;


 int dev_err (int ,char*,int ) ;
 int nix_update_bcast_mce_list (struct rvu*,int ,int) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_npc_disable_mcam_entries (struct rvu*,int ,int ) ;

__attribute__((used)) static void nix_interface_deinit(struct rvu *rvu, u16 pcifunc, u8 nixlf)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 int err;

 pfvf->maxlen = 0;
 pfvf->minlen = 0;
 pfvf->rxvlan = 0;


 err = nix_update_bcast_mce_list(rvu, pcifunc, 0);
 if (err) {
  dev_err(rvu->dev,
   "Bcast list, failed to disable PF_FUNC 0x%x\n",
   pcifunc);
 }


 rvu_npc_disable_mcam_entries(rvu, pcifunc, nixlf);
}
