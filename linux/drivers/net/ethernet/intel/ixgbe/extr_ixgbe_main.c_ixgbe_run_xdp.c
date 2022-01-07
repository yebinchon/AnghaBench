
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {int data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int netdev; int xdp_prog; } ;
struct ixgbe_adapter {int netdev; } ;
struct bpf_prog {int dummy; } ;


 struct sk_buff* ERR_PTR (int) ;
 int IXGBE_XDP_CONSUMED ;
 int IXGBE_XDP_PASS ;
 int IXGBE_XDP_REDIR ;
 struct bpf_prog* READ_ONCE (int ) ;





 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int ixgbe_xmit_xdp_ring (struct ixgbe_adapter*,struct xdp_frame*) ;
 int prefetchw (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int unlikely (int) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;

__attribute__((used)) static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
         struct ixgbe_ring *rx_ring,
         struct xdp_buff *xdp)
{
 int err, result = IXGBE_XDP_PASS;
 struct bpf_prog *xdp_prog;
 struct xdp_frame *xdpf;
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
  xdpf = convert_to_xdp_frame(xdp);
  if (unlikely(!xdpf)) {
   result = IXGBE_XDP_CONSUMED;
   break;
  }
  result = ixgbe_xmit_xdp_ring(adapter, xdpf);
  break;
 case 129:
  err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
  if (!err)
   result = IXGBE_XDP_REDIR;
  else
   result = IXGBE_XDP_CONSUMED;
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(rx_ring->netdev, xdp_prog, act);

 case 131:
  result = IXGBE_XDP_CONSUMED;
  break;
 }
xdp_out:
 rcu_read_unlock();
 return ERR_PTR(-result);
}
