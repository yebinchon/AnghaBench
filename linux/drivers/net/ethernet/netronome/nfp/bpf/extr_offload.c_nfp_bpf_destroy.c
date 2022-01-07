
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_prog {int bpf; int prog; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {struct nfp_prog* dev_priv; } ;


 int kvfree (int ) ;
 int nfp_map_ptrs_forget (int ,struct nfp_prog*) ;
 int nfp_prog_free (struct nfp_prog*) ;

__attribute__((used)) static void nfp_bpf_destroy(struct bpf_prog *prog)
{
 struct nfp_prog *nfp_prog = prog->aux->offload->dev_priv;

 kvfree(nfp_prog->prog);
 nfp_map_ptrs_forget(nfp_prog->bpf, nfp_prog);
 nfp_prog_free(nfp_prog);
}
