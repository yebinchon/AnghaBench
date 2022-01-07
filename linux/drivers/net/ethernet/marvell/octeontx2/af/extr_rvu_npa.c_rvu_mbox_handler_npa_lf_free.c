
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu_pfvf {int npalf; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int dummy; } ;
struct rvu {int dev; struct rvu_hwinfo* hw; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;


 int BLKTYPE_NPA ;
 int NPA_AF_ERR_AF_LF_INVALID ;
 int NPA_AF_ERR_LF_RESET ;
 int dev_err (int ,char*,int) ;
 int npa_ctx_free (struct rvu*,struct rvu_pfvf*) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,struct rvu_block*,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;
 int rvu_lf_reset (struct rvu*,struct rvu_block*,int) ;

int rvu_mbox_handler_npa_lf_free(struct rvu *rvu, struct msg_req *req,
     struct msg_rsp *rsp)
{
 struct rvu_hwinfo *hw = rvu->hw;
 u16 pcifunc = req->hdr.pcifunc;
 struct rvu_block *block;
 struct rvu_pfvf *pfvf;
 int npalf, err;
 int blkaddr;

 pfvf = rvu_get_pfvf(rvu, pcifunc);
 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPA, pcifunc);
 if (!pfvf->npalf || blkaddr < 0)
  return NPA_AF_ERR_AF_LF_INVALID;

 block = &hw->block[blkaddr];
 npalf = rvu_get_lf(rvu, block, pcifunc, 0);
 if (npalf < 0)
  return NPA_AF_ERR_AF_LF_INVALID;


 err = rvu_lf_reset(rvu, block, npalf);
 if (err) {
  dev_err(rvu->dev, "Failed to reset NPALF%d\n", npalf);
  return NPA_AF_ERR_LF_RESET;
 }

 npa_ctx_free(rvu, pfvf);

 return 0;
}
