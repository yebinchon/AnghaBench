
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int base_queue; int num_queue_pairs; int seid; struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ,int,char*) ;
 int i40e_control_wait_rx_q (struct i40e_pf*,int,int) ;
 int mdelay (int) ;

__attribute__((used)) static int i40e_vsi_control_rx(struct i40e_vsi *vsi, bool enable)
{
 struct i40e_pf *pf = vsi->back;
 int i, pf_q, ret = 0;

 pf_q = vsi->base_queue;
 for (i = 0; i < vsi->num_queue_pairs; i++, pf_q++) {
  ret = i40e_control_wait_rx_q(pf, pf_q, enable);
  if (ret) {
   dev_info(&pf->pdev->dev,
     "VSI seid %d Rx ring %d %sable timeout\n",
     vsi->seid, pf_q, (enable ? "en" : "dis"));
   break;
  }
 }




 if (!enable)
  mdelay(50);

 return ret;
}
