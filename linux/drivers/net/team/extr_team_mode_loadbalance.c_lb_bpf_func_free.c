
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team {int lock; } ;
struct lb_priv {int fp; TYPE_1__* ex; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {int orig_fprog; } ;


 int __fprog_destroy (int ) ;
 int bpf_prog_destroy (struct bpf_prog*) ;
 struct lb_priv* get_lb_priv (struct team*) ;
 int lockdep_is_held (int *) ;
 struct bpf_prog* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void lb_bpf_func_free(struct team *team)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 struct bpf_prog *fp;

 if (!lb_priv->ex->orig_fprog)
  return;

 __fprog_destroy(lb_priv->ex->orig_fprog);
 fp = rcu_dereference_protected(lb_priv->fp,
           lockdep_is_held(&team->lock));
 bpf_prog_destroy(fp);
}
