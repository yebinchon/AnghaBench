
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rvu_pfvf {int rx_chan_cnt; int tx_chan_cnt; void* minlen; void* maxlen; void* rx_chan_base; int mac_addr; void* tx_chan_base; int cgx_lmac; } ;
struct rvu {int dev; int * pf2cgxlmac_map; } ;


 int EINVAL ;
 void* NIC_HW_MIN_FRS ;
 void* NIX_CHAN_CGX_LMAC_CHX (int ,int ,int ) ;
 void* NIX_CHAN_LBK_CHX (int ,int) ;


 int RVU_PFVF_FUNC_MASK ;
 int cgx_set_pkind (int ,int ,int) ;
 int dev_err (int ,char*,int) ;
 int is_pf_cgxmapped (struct rvu*,int) ;
 int nix_update_bcast_mce_list (struct rvu*,int,int) ;
 int rvu_cgx_pdata (int ,struct rvu*) ;
 int rvu_get_cgx_lmac_id (int ,int *,int *) ;
 int rvu_get_pf (int) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int) ;
 int rvu_npc_get_pkind (struct rvu*,int) ;
 int rvu_npc_install_bcast_match_entry (struct rvu*,int,int,void*) ;
 int rvu_npc_install_promisc_entry (struct rvu*,int,int,void*,int) ;
 int rvu_npc_install_ucast_entry (struct rvu*,int,int,void*,int ) ;
 int rvu_npc_set_pkind (struct rvu*,int,struct rvu_pfvf*) ;

__attribute__((used)) static int nix_interface_init(struct rvu *rvu, u16 pcifunc, int type, int nixlf)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 u8 cgx_id, lmac_id;
 int pkind, pf, vf;
 int err;

 pf = rvu_get_pf(pcifunc);
 if (!is_pf_cgxmapped(rvu, pf) && type != 128)
  return 0;

 switch (type) {
 case 129:
  pfvf->cgx_lmac = rvu->pf2cgxlmac_map[pf];
  rvu_get_cgx_lmac_id(pfvf->cgx_lmac, &cgx_id, &lmac_id);

  pkind = rvu_npc_get_pkind(rvu, pf);
  if (pkind < 0) {
   dev_err(rvu->dev,
    "PF_Func 0x%x: Invalid pkind\n", pcifunc);
   return -EINVAL;
  }
  pfvf->rx_chan_base = NIX_CHAN_CGX_LMAC_CHX(cgx_id, lmac_id, 0);
  pfvf->tx_chan_base = pfvf->rx_chan_base;
  pfvf->rx_chan_cnt = 1;
  pfvf->tx_chan_cnt = 1;
  cgx_set_pkind(rvu_cgx_pdata(cgx_id, rvu), lmac_id, pkind);
  rvu_npc_set_pkind(rvu, pkind, pfvf);
  break;
 case 128:
  vf = (pcifunc & RVU_PFVF_FUNC_MASK) - 1;
  pfvf->rx_chan_base = NIX_CHAN_LBK_CHX(0, vf);
  pfvf->tx_chan_base = vf & 0x1 ? NIX_CHAN_LBK_CHX(0, vf - 1) :
      NIX_CHAN_LBK_CHX(0, vf + 1);
  pfvf->rx_chan_cnt = 1;
  pfvf->tx_chan_cnt = 1;
  rvu_npc_install_promisc_entry(rvu, pcifunc, nixlf,
           pfvf->rx_chan_base, 0);
  break;
 }




 rvu_npc_install_ucast_entry(rvu, pcifunc, nixlf,
        pfvf->rx_chan_base, pfvf->mac_addr);


 err = nix_update_bcast_mce_list(rvu, pcifunc, 1);
 if (err) {
  dev_err(rvu->dev,
   "Bcast list, failed to enable PF_FUNC 0x%x\n",
   pcifunc);
  return err;
 }

 rvu_npc_install_bcast_match_entry(rvu, pcifunc,
       nixlf, pfvf->rx_chan_base);
 pfvf->maxlen = NIC_HW_MIN_FRS;
 pfvf->minlen = NIC_HW_MIN_FRS;

 return 0;
}
