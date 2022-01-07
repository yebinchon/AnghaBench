
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; int len; } ;
struct TYPE_5__ {TYPE_1__ bin_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; } ;
struct team {int lock; } ;
struct sock_fprog_kern {int dummy; } ;
struct lb_priv {TYPE_3__* ex; int fp; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_6__ {struct sock_fprog_kern* orig_fprog; } ;


 int __fprog_create (struct sock_fprog_kern**,int ,int ) ;
 int __fprog_destroy (struct sock_fprog_kern*) ;
 int bpf_prog_create (struct bpf_prog**,struct sock_fprog_kern*) ;
 int bpf_prog_destroy (struct bpf_prog*) ;
 struct lb_priv* get_lb_priv (struct team*) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct bpf_prog*) ;
 struct bpf_prog* rcu_dereference_protected (int ,int ) ;
 int synchronize_rcu () ;

__attribute__((used)) static int lb_bpf_func_set(struct team *team, struct team_gsetter_ctx *ctx)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 struct bpf_prog *fp = ((void*)0);
 struct bpf_prog *orig_fp = ((void*)0);
 struct sock_fprog_kern *fprog = ((void*)0);
 int err;

 if (ctx->data.bin_val.len) {
  err = __fprog_create(&fprog, ctx->data.bin_val.len,
         ctx->data.bin_val.ptr);
  if (err)
   return err;
  err = bpf_prog_create(&fp, fprog);
  if (err) {
   __fprog_destroy(fprog);
   return err;
  }
 }

 if (lb_priv->ex->orig_fprog) {

  __fprog_destroy(lb_priv->ex->orig_fprog);
  orig_fp = rcu_dereference_protected(lb_priv->fp,
      lockdep_is_held(&team->lock));
 }

 rcu_assign_pointer(lb_priv->fp, fp);
 lb_priv->ex->orig_fprog = fprog;

 if (orig_fp) {
  synchronize_rcu();
  bpf_prog_destroy(orig_fp);
 }
 return 0;
}
