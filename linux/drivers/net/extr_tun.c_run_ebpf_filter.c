
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int filter_prog; } ;
struct tun_prog {int prog; } ;
struct sk_buff {int dummy; } ;


 int bpf_prog_run_clear_cb (int ,struct sk_buff*) ;
 struct tun_prog* rcu_dereference (int ) ;

__attribute__((used)) static unsigned int run_ebpf_filter(struct tun_struct *tun,
        struct sk_buff *skb,
        int len)
{
 struct tun_prog *prog = rcu_dereference(tun->filter_prog);

 if (prog)
  len = bpf_prog_run_clear_cb(prog->prog, skb);

 return len;
}
