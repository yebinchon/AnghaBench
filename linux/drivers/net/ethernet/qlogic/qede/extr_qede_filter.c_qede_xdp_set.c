
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bpf_prog* new_prog; } ;
struct qede_reload_args {TYPE_1__ u; int * func; } ;
struct qede_dev {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int qede_reload (struct qede_dev*,struct qede_reload_args*,int) ;
 int qede_xdp_reload_func ;

__attribute__((used)) static int qede_xdp_set(struct qede_dev *edev, struct bpf_prog *prog)
{
 struct qede_reload_args args;


 args.func = &qede_xdp_reload_func;
 args.u.new_prog = prog;
 qede_reload(edev, &args, 0);

 return 0;
}
