
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_prog; } ;
struct qede_reload_args {TYPE_1__ u; } ;
struct qede_dev {int xdp_prog; } ;
struct bpf_prog {int dummy; } ;


 int bpf_prog_put (struct bpf_prog*) ;
 struct bpf_prog* xchg (int *,int ) ;

__attribute__((used)) static void qede_xdp_reload_func(struct qede_dev *edev,
     struct qede_reload_args *args)
{
 struct bpf_prog *old;

 old = xchg(&edev->xdp_prog, args->u.new_prog);
 if (old)
  bpf_prog_put(old);
}
