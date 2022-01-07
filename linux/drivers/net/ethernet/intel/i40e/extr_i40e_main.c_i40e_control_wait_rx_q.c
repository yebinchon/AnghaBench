
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int dummy; } ;


 int i40e_control_rx_q (struct i40e_pf*,int,int) ;
 int i40e_pf_rxq_wait (struct i40e_pf*,int,int) ;

int i40e_control_wait_rx_q(struct i40e_pf *pf, int pf_q, bool enable)
{
 int ret = 0;

 i40e_control_rx_q(pf, pf_q, enable);


 ret = i40e_pf_rxq_wait(pf, pf_q, enable);
 if (ret)
  return ret;

 return ret;
}
