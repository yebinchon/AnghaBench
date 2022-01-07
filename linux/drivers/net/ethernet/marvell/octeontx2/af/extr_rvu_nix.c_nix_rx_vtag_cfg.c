
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rvu {int dummy; } ;
struct TYPE_2__ {int vtag_type; scalar_t__ strip_vtag; scalar_t__ capture_vtag; } ;
struct nix_vtag_config {scalar_t__ vtag_size; TYPE_1__ rx; } ;


 scalar_t__ BIT_ULL (int) ;
 int EINVAL ;
 int NIX_AF_LFX_RX_VTAG_TYPEX (int,int) ;
 scalar_t__ VTAGSIZE_T8 ;
 int rvu_write64 (struct rvu*,int,int ,scalar_t__) ;

__attribute__((used)) static int nix_rx_vtag_cfg(struct rvu *rvu, int nixlf, int blkaddr,
      struct nix_vtag_config *req)
{
 u64 regval = req->vtag_size;

 if (req->rx.vtag_type > 7 || req->vtag_size > VTAGSIZE_T8)
  return -EINVAL;

 if (req->rx.capture_vtag)
  regval |= BIT_ULL(5);
 if (req->rx.strip_vtag)
  regval |= BIT_ULL(4);

 rvu_write64(rvu, blkaddr,
      NIX_AF_LFX_RX_VTAG_TYPEX(nixlf, req->rx.vtag_type), regval);
 return 0;
}
