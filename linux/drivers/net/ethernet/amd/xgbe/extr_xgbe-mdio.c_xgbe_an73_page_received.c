
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned long an_start; int kr_state; int kx_state; int netdev; } ;
typedef enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;


 int XGBE_AN_ERROR ;
 int XGBE_AN_MS_TIMEOUT ;


 void* jiffies ;
 int link ;
 unsigned long msecs_to_jiffies (int ) ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*) ;
 scalar_t__ time_after (void*,unsigned long) ;
 int xgbe_an73_rx_bpa (struct xgbe_prv_data*,int*) ;
 int xgbe_an73_rx_xnp (struct xgbe_prv_data*,int*) ;
 scalar_t__ xgbe_in_kr_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_an xgbe_an73_page_received(struct xgbe_prv_data *pdata)
{
 enum xgbe_rx *state;
 unsigned long an_timeout;
 enum xgbe_an ret;

 if (!pdata->an_start) {
  pdata->an_start = jiffies;
 } else {
  an_timeout = pdata->an_start +
        msecs_to_jiffies(XGBE_AN_MS_TIMEOUT);
  if (time_after(jiffies, an_timeout)) {

   pdata->kr_state = 129;
   pdata->kx_state = 129;

   pdata->an_start = jiffies;

   netif_dbg(pdata, link, pdata->netdev,
      "CL73 AN timed out, resetting state\n");
  }
 }

 state = xgbe_in_kr_mode(pdata) ? &pdata->kr_state
           : &pdata->kx_state;

 switch (*state) {
 case 129:
  ret = xgbe_an73_rx_bpa(pdata, state);
  break;

 case 128:
  ret = xgbe_an73_rx_xnp(pdata, state);
  break;

 default:
  ret = XGBE_AN_ERROR;
 }

 return ret;
}
