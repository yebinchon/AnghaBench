
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct xgbe_prv_data {TYPE_1__* vdata; } ;
struct TYPE_2__ {scalar_t__ tx_tstamp_workaround; } ;


 int MAC_TXSNR ;
 int MAC_TXSSR ;
 unsigned int NSEC_PER_SEC ;
 int TXTSSTSMIS ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static u64 xgbe_get_tx_tstamp(struct xgbe_prv_data *pdata)
{
 unsigned int tx_snr, tx_ssr;
 u64 nsec;

 if (pdata->vdata->tx_tstamp_workaround) {
  tx_snr = XGMAC_IOREAD(pdata, MAC_TXSNR);
  tx_ssr = XGMAC_IOREAD(pdata, MAC_TXSSR);
 } else {
  tx_ssr = XGMAC_IOREAD(pdata, MAC_TXSSR);
  tx_snr = XGMAC_IOREAD(pdata, MAC_TXSNR);
 }

 if (XGMAC_GET_BITS(tx_snr, MAC_TXSNR, TXTSSTSMIS))
  return 0;

 nsec = tx_ssr;
 nsec *= NSEC_PER_SEC;
 nsec += tx_snr;

 return nsec;
}
