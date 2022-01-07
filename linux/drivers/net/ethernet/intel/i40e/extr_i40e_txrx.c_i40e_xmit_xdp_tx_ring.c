
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct i40e_ring {int dummy; } ;


 int I40E_XDP_CONSUMED ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int i40e_xmit_xdp_ring (struct xdp_frame*,struct i40e_ring*) ;
 scalar_t__ unlikely (int) ;

int i40e_xmit_xdp_tx_ring(struct xdp_buff *xdp, struct i40e_ring *xdp_ring)
{
 struct xdp_frame *xdpf = convert_to_xdp_frame(xdp);

 if (unlikely(!xdpf))
  return I40E_XDP_CONSUMED;

 return i40e_xmit_xdp_ring(xdpf, xdp_ring);
}
