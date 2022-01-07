
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rvu {int dummy; } ;
struct msg_rsp {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct msg_req {TYPE_1__ hdr; } ;


 int BLKADDR_RVUM ;
 int RVU_INVALID_VF_ID ;
 int RVU_PFVF_FUNC_MASK ;
 int RVU_PRIV_PFX_CFG (int ) ;
 int __rvu_flr_handler (struct rvu*,int) ;
 int rvu_get_pf (int) ;
 int rvu_read64 (struct rvu*,int ,int ) ;

__attribute__((used)) static int rvu_mbox_handler_vf_flr(struct rvu *rvu, struct msg_req *req,
       struct msg_rsp *rsp)
{
 u16 pcifunc = req->hdr.pcifunc;
 u16 vf, numvfs;
 u64 cfg;

 vf = pcifunc & RVU_PFVF_FUNC_MASK;
 cfg = rvu_read64(rvu, BLKADDR_RVUM,
    RVU_PRIV_PFX_CFG(rvu_get_pf(pcifunc)));
 numvfs = (cfg >> 12) & 0xFF;

 if (vf && vf <= numvfs)
  __rvu_flr_handler(rvu, pcifunc);
 else
  return RVU_INVALID_VF_ID;

 return 0;
}
