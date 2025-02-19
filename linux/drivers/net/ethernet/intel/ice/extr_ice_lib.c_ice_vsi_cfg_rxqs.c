
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct ice_vsi {scalar_t__ type; scalar_t__ max_frame; size_t num_rxq; TYPE_3__* back; int * rx_rings; void* rx_buf_len; TYPE_1__* netdev; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_DATA_LEN ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 void* ICE_RXBUF_2048 ;
 scalar_t__ ICE_VSI_VF ;
 scalar_t__ VLAN_HLEN ;
 int dev_err (int *,char*,size_t,int) ;
 int ice_setup_rx_ctx (int ) ;

int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
{
 u16 i;

 if (vsi->type == ICE_VSI_VF)
  goto setup_rings;

 if (vsi->netdev && vsi->netdev->mtu > ETH_DATA_LEN)
  vsi->max_frame = vsi->netdev->mtu +
   ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 else
  vsi->max_frame = ICE_RXBUF_2048;

 vsi->rx_buf_len = ICE_RXBUF_2048;
setup_rings:

 for (i = 0; i < vsi->num_rxq; i++) {
  int err;

  err = ice_setup_rx_ctx(vsi->rx_rings[i]);
  if (err) {
   dev_err(&vsi->back->pdev->dev,
    "ice_setup_rx_ctx failed for RxQ %d, err %d\n",
    i, err);
   return err;
  }
 }

 return 0;
}
