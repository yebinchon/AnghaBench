
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_prog {int verifier_meta; int bpf; int type; int insns; } ;
struct bpf_prog {int len; int insnsi; TYPE_1__* aux; int type; } ;
struct TYPE_4__ {int offdev; struct nfp_prog* dev_priv; } ;
struct TYPE_3__ {TYPE_2__* offload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int bpf_offload_dev_priv (int ) ;
 struct nfp_prog* kzalloc (int,int ) ;
 int nfp_prog_first_meta (struct nfp_prog*) ;
 int nfp_prog_free (struct nfp_prog*) ;
 int nfp_prog_prepare (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int nfp_bpf_verifier_prep(struct bpf_prog *prog)
{
 struct nfp_prog *nfp_prog;
 int ret;

 nfp_prog = kzalloc(sizeof(*nfp_prog), GFP_KERNEL);
 if (!nfp_prog)
  return -ENOMEM;
 prog->aux->offload->dev_priv = nfp_prog;

 INIT_LIST_HEAD(&nfp_prog->insns);
 nfp_prog->type = prog->type;
 nfp_prog->bpf = bpf_offload_dev_priv(prog->aux->offload->offdev);

 ret = nfp_prog_prepare(nfp_prog, prog->insnsi, prog->len);
 if (ret)
  goto err_free;

 nfp_prog->verifier_meta = nfp_prog_first_meta(nfp_prog);

 return 0;

err_free:
 nfp_prog_free(nfp_prog);

 return ret;
}
