
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_buff {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbevf_ring {size_t queue_index; int netdev; int xdp_prog; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** xdp_ring; } ;
struct bpf_prog {int dummy; } ;


 struct sk_buff* ERR_PTR (int) ;
 int IXGBEVF_XDP_CONSUMED ;
 int IXGBEVF_XDP_PASS ;
 struct bpf_prog* READ_ONCE (int ) ;




 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 int ixgbevf_xmit_xdp_ring (struct ixgbevf_ring*,struct xdp_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;

__attribute__((used)) static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
           struct ixgbevf_ring *rx_ring,
           struct xdp_buff *xdp)
{
 int result = IXGBEVF_XDP_PASS;
 struct ixgbevf_ring *xdp_ring;
 struct bpf_prog *xdp_prog;
 u32 act;

 rcu_read_lock();
 xdp_prog = READ_ONCE(rx_ring->xdp_prog);

 if (!xdp_prog)
  goto xdp_out;

 act = bpf_prog_run_xdp(xdp_prog, xdp);
 switch (act) {
 case 129:
  break;
 case 128:
  xdp_ring = adapter->xdp_ring[rx_ring->queue_index];
  result = ixgbevf_xmit_xdp_ring(xdp_ring, xdp);
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 131:
  trace_xdp_exception(rx_ring->netdev, xdp_prog, act);

 case 130:
  result = IXGBEVF_XDP_CONSUMED;
  break;
 }
xdp_out:
 rcu_read_unlock();
 return ERR_PTR(-result);
}
