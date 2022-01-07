
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int base_queue; int num_queue_pairs; int alloc_queue_pairs; int seid; struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ,int) ;
 int i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_pf_rxq_wait (struct i40e_pf*,int,int) ;
 int i40e_pf_txq_wait (struct i40e_pf*,int,int) ;

int i40e_vsi_wait_queues_disabled(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 int i, pf_q, ret;

 pf_q = vsi->base_queue;
 for (i = 0; i < vsi->num_queue_pairs; i++, pf_q++) {

  ret = i40e_pf_txq_wait(pf, pf_q, 0);
  if (ret) {
   dev_info(&pf->pdev->dev,
     "VSI seid %d Tx ring %d disable timeout\n",
     vsi->seid, pf_q);
   return ret;
  }

  if (!i40e_enabled_xdp_vsi(vsi))
   goto wait_rx;


  ret = i40e_pf_txq_wait(pf, pf_q + vsi->alloc_queue_pairs,
           0);
  if (ret) {
   dev_info(&pf->pdev->dev,
     "VSI seid %d XDP Tx ring %d disable timeout\n",
     vsi->seid, pf_q);
   return ret;
  }
wait_rx:

  ret = i40e_pf_rxq_wait(pf, pf_q, 0);
  if (ret) {
   dev_info(&pf->pdev->dev,
     "VSI seid %d Rx ring %d disable timeout\n",
     vsi->seid, pf_q);
   return ret;
  }
 }

 return 0;
}
