
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {int rx_buf_len; int num_queue_pairs; TYPE_3__* netdev; TYPE_2__** xdp_rings; int xdp_prog; TYPE_1__** rx_rings; struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_6__ {int mtu; } ;
struct TYPE_5__ {scalar_t__ xsk_umem; } ;
struct TYPE_4__ {int xdp_prog; } ;


 int EINVAL ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int VLAN_HLEN ;
 int WRITE_ONCE (int ,int ) ;
 int XDP_WAKEUP_RX ;
 int bpf_prog_put (struct bpf_prog*) ;
 int i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_prep_for_reset (struct i40e_pf*,int) ;
 int i40e_reset_and_rebuild (struct i40e_pf*,int,int) ;
 int i40e_xsk_wakeup (TYPE_3__*,int,int ) ;
 struct bpf_prog* xchg (int *,struct bpf_prog*) ;

__attribute__((used)) static int i40e_xdp_setup(struct i40e_vsi *vsi,
     struct bpf_prog *prog)
{
 int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 struct i40e_pf *pf = vsi->back;
 struct bpf_prog *old_prog;
 bool need_reset;
 int i;


 if (frame_size > vsi->rx_buf_len)
  return -EINVAL;

 if (!i40e_enabled_xdp_vsi(vsi) && !prog)
  return 0;


 need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);

 if (need_reset)
  i40e_prep_for_reset(pf, 1);

 old_prog = xchg(&vsi->xdp_prog, prog);

 if (need_reset)
  i40e_reset_and_rebuild(pf, 1, 1);

 for (i = 0; i < vsi->num_queue_pairs; i++)
  WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);

 if (old_prog)
  bpf_prog_put(old_prog);




 if (need_reset && prog)
  for (i = 0; i < vsi->num_queue_pairs; i++)
   if (vsi->xdp_rings[i]->xsk_umem)
    (void)i40e_xsk_wakeup(vsi->netdev, i,
            XDP_WAKEUP_RX);

 return 0;
}
