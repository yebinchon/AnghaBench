
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long long u64 ;
typedef int u16 ;
struct rvu {int dev; } ;
struct TYPE_4__ {int eol; int pf_func; int next; scalar_t__ index; scalar_t__ op; } ;
struct TYPE_3__ {scalar_t__ pcifunc; } ;
struct nix_aq_enq_req {int qidx; int mce_mask; TYPE_2__ mce; int op; int ctype; TYPE_1__ hdr; } ;


 int NIX_AQ_CTYPE_MCE ;
 int RVU_PFVF_FUNC_MASK ;
 int dev_err (int ,char*,int ,int) ;
 int rvu_get_pf (int) ;
 int rvu_nix_aq_enq_inst (struct rvu*,struct nix_aq_enq_req*,int *) ;

__attribute__((used)) static int nix_setup_mce(struct rvu *rvu, int mce, u8 op,
    u16 pcifunc, int next, bool eol)
{
 struct nix_aq_enq_req aq_req;
 int err;

 aq_req.hdr.pcifunc = 0;
 aq_req.ctype = NIX_AQ_CTYPE_MCE;
 aq_req.op = op;
 aq_req.qidx = mce;


 aq_req.mce.op = 0;
 aq_req.mce.index = 0;
 aq_req.mce.eol = eol;
 aq_req.mce.pf_func = pcifunc;
 aq_req.mce.next = next;


 *(u64 *)(&aq_req.mce_mask) = ~0ULL;

 err = rvu_nix_aq_enq_inst(rvu, &aq_req, ((void*)0));
 if (err) {
  dev_err(rvu->dev, "Failed to setup Bcast MCE for PF%d:VF%d\n",
   rvu_get_pf(pcifunc), pcifunc & RVU_PFVF_FUNC_MASK);
  return err;
 }
 return 0;
}
