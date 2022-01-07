
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_prog {int prog_len; int __prog_alloc_len; void* prog; } ;


 int GFP_KERNEL ;
 int kvfree (void*) ;
 void* kvmalloc_array (int,int,int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static void nfp_bpf_prog_trim(struct nfp_prog *nfp_prog)
{
 void *prog;

 prog = kvmalloc_array(nfp_prog->prog_len, sizeof(u64), GFP_KERNEL);
 if (!prog)
  return;

 nfp_prog->__prog_alloc_len = nfp_prog->prog_len * sizeof(u64);
 memcpy(prog, nfp_prog->prog, nfp_prog->__prog_alloc_len);
 kvfree(nfp_prog->prog);
 nfp_prog->prog = prog;
}
