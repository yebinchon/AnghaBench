
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;
struct nix_lso_format {int offset; int sizem1; int alg; void* layer; int member_0; } ;


 int NIX_AF_LSO_FORMATX_FIELDX (int ,int ) ;
 int NIX_LSOALG_ADD_PAYLEN ;
 int NIX_LSOALG_ADD_SEGNUM ;
 void* NIX_TXLAYER_OL3 ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static void nix_setup_lso_tso_l3(struct rvu *rvu, int blkaddr,
     u64 format, bool v4, u64 *fidx)
{
 struct nix_lso_format field = {0};


 field.layer = NIX_TXLAYER_OL3;

 field.offset = v4 ? 2 : 4;
 field.sizem1 = 1;
 field.alg = NIX_LSOALG_ADD_PAYLEN;
 rvu_write64(rvu, blkaddr,
      NIX_AF_LSO_FORMATX_FIELDX(format, (*fidx)++),
      *(u64 *)&field);


 if (!v4)
  return;


 field.layer = NIX_TXLAYER_OL3;
 field.offset = 4;
 field.sizem1 = 1;
 field.alg = NIX_LSOALG_ADD_SEGNUM;
 rvu_write64(rvu, blkaddr,
      NIX_AF_LSO_FORMATX_FIELDX(format, (*fidx)++),
      *(u64 *)&field);
}
