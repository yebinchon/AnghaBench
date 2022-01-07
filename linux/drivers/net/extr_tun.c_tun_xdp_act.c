
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdp_buff {int dummy; } ;
struct tun_struct {TYPE_1__* pcpu_stats; int dev; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {int rx_dropped; } ;







 int bpf_warn_invalid_xdp_action (int) ;
 int this_cpu_inc (int ) ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int tun_xdp_tx (int ,struct xdp_buff*) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;

__attribute__((used)) static int tun_xdp_act(struct tun_struct *tun, struct bpf_prog *xdp_prog,
         struct xdp_buff *xdp, u32 act)
{
 int err;

 switch (act) {
 case 129:
  err = xdp_do_redirect(tun->dev, xdp, xdp_prog);
  if (err)
   return err;
  break;
 case 128:
  err = tun_xdp_tx(tun->dev, xdp);
  if (err < 0)
   return err;
  break;
 case 130:
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(tun->dev, xdp_prog, act);

 case 131:
  this_cpu_inc(tun->pcpu_stats->rx_dropped);
  break;
 }

 return act;
}
