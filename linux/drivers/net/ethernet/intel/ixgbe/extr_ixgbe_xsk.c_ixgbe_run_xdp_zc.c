
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct xdp_umem {int dummy; } ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {int handle; scalar_t__ data_hard_start; scalar_t__ data; } ;
struct ixgbe_ring {int netdev; int xdp_prog; struct xdp_umem* xsk_umem; } ;
struct ixgbe_adapter {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int IXGBE_XDP_CONSUMED ;
 int IXGBE_XDP_PASS ;
 int IXGBE_XDP_REDIR ;
 struct bpf_prog* READ_ONCE (int ) ;





 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int ixgbe_xmit_xdp_ring (struct ixgbe_adapter*,struct xdp_frame*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int unlikely (int) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;
 int xsk_umem_adjust_offset (struct xdp_umem*,int ,scalar_t__) ;

__attribute__((used)) static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
       struct ixgbe_ring *rx_ring,
       struct xdp_buff *xdp)
{
 struct xdp_umem *umem = rx_ring->xsk_umem;
 int err, result = IXGBE_XDP_PASS;
 struct bpf_prog *xdp_prog;
 struct xdp_frame *xdpf;
 u64 offset;
 u32 act;

 rcu_read_lock();
 xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 act = bpf_prog_run_xdp(xdp_prog, xdp);
 offset = xdp->data - xdp->data_hard_start;

 xdp->handle = xsk_umem_adjust_offset(umem, xdp->handle, offset);

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
  err = xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog);
  result = !err ? IXGBE_XDP_REDIR : IXGBE_XDP_CONSUMED;
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(rx_ring->netdev, xdp_prog, act);

 case 131:
  result = IXGBE_XDP_CONSUMED;
  break;
 }
 rcu_read_unlock();
 return result;
}
