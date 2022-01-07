
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int base_queue; int alloc_queue_pairs; int seid; struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ,int,char*) ;
 int i40e_control_rx_q (struct i40e_pf*,int,int) ;
 int i40e_control_wait_tx_q (int ,struct i40e_pf*,int,int,int) ;
 int i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_pf_rxq_wait (struct i40e_pf*,int,int) ;
 int mdelay (int) ;

__attribute__((used)) static int i40e_queue_pair_toggle_rings(struct i40e_vsi *vsi, int queue_pair,
     bool enable)
{
 struct i40e_pf *pf = vsi->back;
 int pf_q, ret = 0;

 pf_q = vsi->base_queue + queue_pair;
 ret = i40e_control_wait_tx_q(vsi->seid, pf, pf_q,
         0 , enable);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "VSI seid %d Tx ring %d %sable timeout\n",
    vsi->seid, pf_q, (enable ? "en" : "dis"));
  return ret;
 }

 i40e_control_rx_q(pf, pf_q, enable);
 ret = i40e_pf_rxq_wait(pf, pf_q, enable);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "VSI seid %d Rx ring %d %sable timeout\n",
    vsi->seid, pf_q, (enable ? "en" : "dis"));
  return ret;
 }




 if (!enable)
  mdelay(50);

 if (!i40e_enabled_xdp_vsi(vsi))
  return ret;

 ret = i40e_control_wait_tx_q(vsi->seid, pf,
         pf_q + vsi->alloc_queue_pairs,
         1 , enable);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "VSI seid %d XDP Tx ring %d %sable timeout\n",
    vsi->seid, pf_q, (enable ? "en" : "dis"));
 }

 return ret;
}
