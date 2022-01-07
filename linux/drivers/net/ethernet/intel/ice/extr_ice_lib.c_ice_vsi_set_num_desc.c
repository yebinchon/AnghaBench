
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_vsi {int type; TYPE_2__* back; int num_tx_desc; int num_rx_desc; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ICE_DFLT_NUM_RX_DESC ;
 int ICE_DFLT_NUM_TX_DESC ;


 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
{
 switch (vsi->type) {
 case 128:

 case 129:
  vsi->num_rx_desc = ICE_DFLT_NUM_RX_DESC;
  vsi->num_tx_desc = ICE_DFLT_NUM_TX_DESC;
  break;
 default:
  dev_dbg(&vsi->back->pdev->dev,
   "Not setting number of Tx/Rx descriptors for VSI type %d\n",
   vsi->type);
  break;
 }
}
