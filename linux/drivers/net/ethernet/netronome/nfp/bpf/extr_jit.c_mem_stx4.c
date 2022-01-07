
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct nfp_insn_meta {TYPE_1__ ptr; } ;


 scalar_t__ BPF_PROG_TYPE_XDP ;
 scalar_t__ PTR_TO_CTX ;
 int mem_stx (struct nfp_prog*,struct nfp_insn_meta*,int) ;
 int mem_stx_xdp (struct nfp_prog*,struct nfp_insn_meta*) ;

__attribute__((used)) static int mem_stx4(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 if (meta->ptr.type == PTR_TO_CTX)
  if (nfp_prog->type == BPF_PROG_TYPE_XDP)
   return mem_stx_xdp(nfp_prog, meta);
 return mem_stx(nfp_prog, meta, 4);
}
