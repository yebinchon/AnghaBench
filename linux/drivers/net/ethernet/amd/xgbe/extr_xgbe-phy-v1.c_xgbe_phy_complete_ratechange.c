
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xgbe_prv_data {int netdev; } ;


 int RATECHANGE ;
 int RESETB_RXD ;
 int RXTX_REG6 ;
 int RX_READY ;
 int SIR0_STATUS ;
 int SIR1_SPEED ;
 int TX_READY ;
 unsigned int XGBE_RATECHANGE_COUNT ;
 int XRXTX_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int XSIR0_IOREAD (struct xgbe_prv_data*,int ) ;
 int XSIR1_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 scalar_t__ XSIR_GET_BITS (int ,int ,int ) ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void xgbe_phy_complete_ratechange(struct xgbe_prv_data *pdata)
{
 unsigned int wait;
 u16 status;


 XSIR1_IOWRITE_BITS(pdata, SIR1_SPEED, RATECHANGE, 0);


 wait = XGBE_RATECHANGE_COUNT;
 while (wait--) {
  usleep_range(50, 75);

  status = XSIR0_IOREAD(pdata, SIR0_STATUS);
  if (XSIR_GET_BITS(status, SIR0_STATUS, RX_READY) &&
      XSIR_GET_BITS(status, SIR0_STATUS, TX_READY))
   goto rx_reset;
 }

 netif_dbg(pdata, link, pdata->netdev, "SerDes rx/tx not ready (%#hx)\n",
    status);

rx_reset:

 XRXTX_IOWRITE_BITS(pdata, RXTX_REG6, RESETB_RXD, 0);
 XRXTX_IOWRITE_BITS(pdata, RXTX_REG6, RESETB_RXD, 1);
}
