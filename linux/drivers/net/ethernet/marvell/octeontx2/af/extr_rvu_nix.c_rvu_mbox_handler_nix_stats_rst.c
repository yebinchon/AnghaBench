
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu_hwinfo {int * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;


 int BLKTYPE_NIX ;
 int NIX_AF_CONST1 ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int NIX_AF_LFX_RX_STATX (int,int) ;
 int NIX_AF_LFX_TX_STATX (int,int) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,int *,int ,int ) ;
 int rvu_read64 (struct rvu*,int,int ) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

int rvu_mbox_handler_nix_stats_rst(struct rvu *rvu, struct msg_req *req,
       struct msg_rsp *rsp)
{
 struct rvu_hwinfo *hw = rvu->hw;
 u16 pcifunc = req->hdr.pcifunc;
 int i, nixlf, blkaddr;
 u64 stats;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 nixlf = rvu_get_lf(rvu, &hw->block[blkaddr], pcifunc, 0);
 if (nixlf < 0)
  return NIX_AF_ERR_AF_LF_INVALID;


 stats = rvu_read64(rvu, blkaddr, NIX_AF_CONST1);


 for (i = 0; i < ((stats >> 24) & 0xFF); i++)
  rvu_write64(rvu, blkaddr, NIX_AF_LFX_TX_STATX(nixlf, i), 0);


 for (i = 0; i < ((stats >> 32) & 0xFF); i++)
  rvu_write64(rvu, blkaddr, NIX_AF_LFX_RX_STATX(nixlf, i), 0);

 return 0;
}
