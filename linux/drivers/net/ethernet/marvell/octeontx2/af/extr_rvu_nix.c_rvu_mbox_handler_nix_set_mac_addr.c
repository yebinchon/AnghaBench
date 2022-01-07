
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu_pfvf {int rx_chan_base; int mac_addr; int nixlf; } ;
struct rvu_hwinfo {int * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int pcifunc; } ;
struct nix_set_mac_addr {int mac_addr; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;


 int BLKTYPE_NIX ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int ether_addr_copy (int ,int ) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,int *,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_npc_install_ucast_entry (struct rvu*,int ,int,int ,int ) ;
 int rvu_npc_update_rxvlan (struct rvu*,int ,int) ;

int rvu_mbox_handler_nix_set_mac_addr(struct rvu *rvu,
          struct nix_set_mac_addr *req,
          struct msg_rsp *rsp)
{
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

 ether_addr_copy(pfvf->mac_addr, req->mac_addr);

 rvu_npc_install_ucast_entry(rvu, pcifunc, nixlf,
        pfvf->rx_chan_base, req->mac_addr);

 rvu_npc_update_rxvlan(rvu, pcifunc, nixlf);

 return 0;
}
