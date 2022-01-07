
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int MAC_STNUR ;
 int MAC_STSUR ;
 int MAC_TSCR ;
 int TSINIT ;
 scalar_t__ XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int netdev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void xgbe_set_tstamp_time(struct xgbe_prv_data *pdata, unsigned int sec,
     unsigned int nsec)
{
 unsigned int count = 10000;


 XGMAC_IOWRITE(pdata, MAC_STSUR, sec);
 XGMAC_IOWRITE(pdata, MAC_STNUR, nsec);
 XGMAC_IOWRITE_BITS(pdata, MAC_TSCR, TSINIT, 1);


 while (--count && XGMAC_IOREAD_BITS(pdata, MAC_TSCR, TSINIT))
  udelay(5);

 if (!count)
  netdev_err(pdata->netdev, "timed out initializing timestamp\n");
}
