
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vivid_dev {struct cec_adapter** cec_tx_adap; struct cec_adapter* cec_rx_adap; } ;
struct cec_adapter {scalar_t__ is_configured; } ;


 unsigned int MAX_OUTPUTS ;
 scalar_t__ cec_has_log_addr (struct cec_adapter*,int) ;

__attribute__((used)) static bool vivid_cec_find_dest_adap(struct vivid_dev *dev,
         struct cec_adapter *adap, u8 dest)
{
 unsigned int i;

 if (dest >= 0xf)
  return 0;

 if (adap != dev->cec_rx_adap && dev->cec_rx_adap &&
     dev->cec_rx_adap->is_configured &&
     cec_has_log_addr(dev->cec_rx_adap, dest))
  return 1;

 for (i = 0; i < MAX_OUTPUTS && dev->cec_tx_adap[i]; i++) {
  if (adap == dev->cec_tx_adap[i])
   continue;
  if (!dev->cec_tx_adap[i]->is_configured)
   continue;
  if (cec_has_log_addr(dev->cec_tx_adap[i], dest))
   return 1;
 }
 return 0;
}
