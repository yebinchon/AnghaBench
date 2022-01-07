
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int hw; } ;


 int ETIMEDOUT ;
 int ICE_Q_WAIT_MAX_RETRY ;
 int QRX_CTRL (int) ;
 int QRX_CTRL_QENA_STAT_M ;
 int rd32 (int *,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ice_pf_rxq_wait(struct ice_pf *pf, int pf_q, bool ena)
{
 int i;

 for (i = 0; i < ICE_Q_WAIT_MAX_RETRY; i++) {
  if (ena == !!(rd32(&pf->hw, QRX_CTRL(pf_q)) &
         QRX_CTRL_QENA_STAT_M))
   return 0;

  usleep_range(20, 40);
 }

 return -ETIMEDOUT;
}
