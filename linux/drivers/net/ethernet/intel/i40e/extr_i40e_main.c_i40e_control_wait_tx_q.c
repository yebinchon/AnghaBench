
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int,char*,int,char*) ;
 int i40e_control_tx_q (struct i40e_pf*,int,int) ;
 int i40e_pf_txq_wait (struct i40e_pf*,int,int) ;

int i40e_control_wait_tx_q(int seid, struct i40e_pf *pf, int pf_q,
      bool is_xdp, bool enable)
{
 int ret;

 i40e_control_tx_q(pf, pf_q, enable);


 ret = i40e_pf_txq_wait(pf, pf_q, enable);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "VSI seid %d %sTx ring %d %sable timeout\n",
    seid, (is_xdp ? "XDP " : ""), pf_q,
    (enable ? "en" : "dis"));
 }

 return ret;
}
