
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tun_struct {int steering_prog; int numqueues; } ;
struct tun_prog {int prog; } ;
struct sk_buff {int dummy; } ;


 int READ_ONCE (int ) ;
 int bpf_prog_run_clear_cb (int ,struct sk_buff*) ;
 struct tun_prog* rcu_dereference (int ) ;

__attribute__((used)) static u16 tun_ebpf_select_queue(struct tun_struct *tun, struct sk_buff *skb)
{
 struct tun_prog *prog;
 u32 numqueues;
 u16 ret = 0;

 numqueues = READ_ONCE(tun->numqueues);
 if (!numqueues)
  return 0;

 prog = rcu_dereference(tun->steering_prog);
 if (prog)
  ret = bpf_prog_run_clear_cb(prog->prog, skb);

 return ret % numqueues;
}
