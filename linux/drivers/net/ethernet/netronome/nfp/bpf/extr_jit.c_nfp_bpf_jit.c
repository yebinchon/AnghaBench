
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int n_translated; } ;


 int EINVAL ;
 int nfp_bpf_optimize (struct nfp_prog*) ;
 int nfp_bpf_prog_trim (struct nfp_prog*) ;
 int nfp_bpf_replace_map_ptrs (struct nfp_prog*) ;
 int nfp_translate (struct nfp_prog*) ;
 int pr_err (char*,int,int ) ;

int nfp_bpf_jit(struct nfp_prog *nfp_prog)
{
 int ret;

 ret = nfp_bpf_replace_map_ptrs(nfp_prog);
 if (ret)
  return ret;

 ret = nfp_bpf_optimize(nfp_prog);
 if (ret)
  return ret;

 ret = nfp_translate(nfp_prog);
 if (ret) {
  pr_err("Translation failed with error %d (translated: %u)\n",
         ret, nfp_prog->n_translated);
  return -EINVAL;
 }

 nfp_bpf_prog_trim(nfp_prog);

 return ret;
}
