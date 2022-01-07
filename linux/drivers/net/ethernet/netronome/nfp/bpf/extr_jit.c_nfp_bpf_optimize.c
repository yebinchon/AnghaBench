
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;


 int nfp_bpf_opt_ld_mask (struct nfp_prog*) ;
 int nfp_bpf_opt_ld_shift (struct nfp_prog*) ;
 int nfp_bpf_opt_ldst_gather (struct nfp_prog*) ;
 int nfp_bpf_opt_neg_add_sub (struct nfp_prog*) ;
 int nfp_bpf_opt_pkt_cache (struct nfp_prog*) ;
 int nfp_bpf_opt_reg_init (struct nfp_prog*) ;

__attribute__((used)) static int nfp_bpf_optimize(struct nfp_prog *nfp_prog)
{
 nfp_bpf_opt_reg_init(nfp_prog);

 nfp_bpf_opt_neg_add_sub(nfp_prog);
 nfp_bpf_opt_ld_mask(nfp_prog);
 nfp_bpf_opt_ld_shift(nfp_prog);
 nfp_bpf_opt_ldst_gather(nfp_prog);
 nfp_bpf_opt_pkt_cache(nfp_prog);

 return 0;
}
