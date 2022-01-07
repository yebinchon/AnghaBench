
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int COMMAND ;
 int REQUEST ;
 int STATUS ;
 int SUB_COMMAND ;
 unsigned int XGBE_RATECHANGE_COUNT ;
 int XP_DRIVER_INT_REQ ;
 int XP_DRIVER_INT_RO ;
 int XP_DRIVER_SCRATCH_0 ;
 int XP_DRIVER_SCRATCH_1 ;
 scalar_t__ XP_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XP_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int XP_SET_BITS (unsigned int,int ,int ,unsigned int) ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xgbe_phy_perform_ratechange(struct xgbe_prv_data *pdata,
     unsigned int cmd, unsigned int sub_cmd)
{
 unsigned int s0 = 0;
 unsigned int wait;


 if (XP_IOREAD_BITS(pdata, XP_DRIVER_INT_RO, STATUS))
  netif_dbg(pdata, link, pdata->netdev,
     "firmware mailbox not ready for command\n");


 XP_SET_BITS(s0, XP_DRIVER_SCRATCH_0, COMMAND, cmd);
 XP_SET_BITS(s0, XP_DRIVER_SCRATCH_0, SUB_COMMAND, sub_cmd);


 XP_IOWRITE(pdata, XP_DRIVER_SCRATCH_0, s0);
 XP_IOWRITE(pdata, XP_DRIVER_SCRATCH_1, 0);
 XP_IOWRITE_BITS(pdata, XP_DRIVER_INT_REQ, REQUEST, 1);


 wait = XGBE_RATECHANGE_COUNT;
 while (wait--) {
  if (!XP_IOREAD_BITS(pdata, XP_DRIVER_INT_RO, STATUS))
   return;

  usleep_range(1000, 2000);
 }

 netif_dbg(pdata, link, pdata->netdev,
    "firmware mailbox command did not complete\n");
}
