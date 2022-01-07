
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdp_buff {int data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct i40e_ring {size_t queue_index; int netdev; TYPE_1__* vsi; int xdp_prog; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct i40e_ring** xdp_rings; } ;


 struct sk_buff* ERR_PTR (int) ;
 int I40E_XDP_CONSUMED ;
 int I40E_XDP_PASS ;
 int I40E_XDP_REDIR ;
 struct bpf_prog* READ_ONCE (int ) ;





 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 int i40e_xmit_xdp_tx_ring (struct xdp_buff*,struct i40e_ring*) ;
 int prefetchw (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;

__attribute__((used)) static struct sk_buff *i40e_run_xdp(struct i40e_ring *rx_ring,
        struct xdp_buff *xdp)
{
 int err, result = I40E_XDP_PASS;
 struct i40e_ring *xdp_ring;
 struct bpf_prog *xdp_prog;
 u32 act;

 rcu_read_lock();
 xdp_prog = READ_ONCE(rx_ring->xdp_prog);

 if (!xdp_prog)
  goto xdp_out;

 prefetchw(xdp->data_hard_start);

 act = bpf_prog_run_xdp(xdp_prog, xdp);
 switch (act) {
 case 130:
  break;
 case 128:
  xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->queue_index];
  result = i40e_xmit_xdp_tx_ring(xdp, xdp_ring);
  break;
 case 129:
  err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
  result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(rx_ring->netdev, xdp_prog, act);

 case 131:
  result = I40E_XDP_CONSUMED;
  break;
 }
xdp_out:
 rcu_read_unlock();
 return ERR_PTR(-result);
}
