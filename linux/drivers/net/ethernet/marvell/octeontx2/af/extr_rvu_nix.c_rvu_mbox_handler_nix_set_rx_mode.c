
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu_pfvf {int rx_chan_base; int nixlf; } ;
struct rvu_hwinfo {int * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int pcifunc; } ;
struct nix_rx_mode {int mode; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;


 int BLKTYPE_NIX ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int NIX_RX_MODE_ALLMULTI ;
 int NIX_RX_MODE_PROMISC ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,int *,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_npc_disable_promisc_entry (struct rvu*,int ,int) ;
 int rvu_npc_install_promisc_entry (struct rvu*,int ,int,int ,int) ;
 int rvu_npc_update_rxvlan (struct rvu*,int ,int) ;

int rvu_mbox_handler_nix_set_rx_mode(struct rvu *rvu, struct nix_rx_mode *req,
         struct msg_rsp *rsp)
{
 bool allmulti = 0, disable_promisc = 0;
 struct rvu_hwinfo *hw = rvu->hw;
 u16 pcifunc = req->hdr.pcifunc;
 struct rvu_pfvf *pfvf;
 int blkaddr, nixlf;

 pfvf = rvu_get_pfvf(rvu, pcifunc);
 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (!pfvf->nixlf || blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 nixlf = rvu_get_lf(rvu, &hw->block[blkaddr], pcifunc, 0);
 if (nixlf < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 if (req->mode & NIX_RX_MODE_PROMISC)
  allmulti = 0;
 else if (req->mode & NIX_RX_MODE_ALLMULTI)
  allmulti = 1;
 else
  disable_promisc = 1;

 if (disable_promisc)
  rvu_npc_disable_promisc_entry(rvu, pcifunc, nixlf);
 else
  rvu_npc_install_promisc_entry(rvu, pcifunc, nixlf,
           pfvf->rx_chan_base, allmulti);

 rvu_npc_update_rxvlan(rvu, pcifunc, nixlf);

 return 0;
}
