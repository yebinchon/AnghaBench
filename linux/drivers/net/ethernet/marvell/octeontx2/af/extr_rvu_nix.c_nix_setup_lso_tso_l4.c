
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;
struct nix_lso_format {int offset; int sizem1; int alg; void* layer; int member_0; } ;


 int NIX_AF_LSO_FORMATX_FIELDX (int ,int ) ;
 int NIX_LSOALG_ADD_OFFSET ;
 int NIX_LSOALG_TCP_FLAGS ;
 void* NIX_TXLAYER_OL4 ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static void nix_setup_lso_tso_l4(struct rvu *rvu, int blkaddr,
     u64 format, u64 *fidx)
{
 struct nix_lso_format field = {0};


 field.layer = NIX_TXLAYER_OL4;
 field.offset = 4;
 field.sizem1 = 3;
 field.alg = NIX_LSOALG_ADD_OFFSET;
 rvu_write64(rvu, blkaddr,
      NIX_AF_LSO_FORMATX_FIELDX(format, (*fidx)++),
      *(u64 *)&field);


 field.layer = NIX_TXLAYER_OL4;
 field.offset = 12;
 field.sizem1 = 1;
 field.alg = NIX_LSOALG_TCP_FLAGS;
 rvu_write64(rvu, blkaddr,
      NIX_AF_LSO_FORMATX_FIELDX(format, (*fidx)++),
      *(u64 *)&field);
}
