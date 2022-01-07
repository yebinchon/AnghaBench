
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct libipw_network {int* rates; int* rates_ex; int mode; int rates_ex_len; int rates_len; } ;
struct ipw_supported_rates {int* supported_rates; scalar_t__ num_rates; } ;
struct ipw_priv {int rates_mask; } ;


 int IPW_DEBUG_SCAN (char*,int,...) ;
 int IPW_MAX_RATES ;
 int LIBIPW_BASIC_RATE_MASK ;
 int ipw_is_rate_in_mask (struct ipw_priv*,int ,int) ;
 int memset (struct ipw_supported_rates*,int ,int) ;
 int min (int ,int ) ;

__attribute__((used)) static int ipw_compatible_rates(struct ipw_priv *priv,
    const struct libipw_network *network,
    struct ipw_supported_rates *rates)
{
 int num_rates, i;

 memset(rates, 0, sizeof(*rates));
 num_rates = min(network->rates_len, (u8) IPW_MAX_RATES);
 rates->num_rates = 0;
 for (i = 0; i < num_rates; i++) {
  if (!ipw_is_rate_in_mask(priv, network->mode,
      network->rates[i])) {

   if (network->rates[i] & LIBIPW_BASIC_RATE_MASK) {
    IPW_DEBUG_SCAN("Adding masked mandatory "
            "rate %02X\n",
            network->rates[i]);
    rates->supported_rates[rates->num_rates++] =
        network->rates[i];
    continue;
   }

   IPW_DEBUG_SCAN("Rate %02X masked : 0x%08X\n",
           network->rates[i], priv->rates_mask);
   continue;
  }

  rates->supported_rates[rates->num_rates++] = network->rates[i];
 }

 num_rates = min(network->rates_ex_len,
   (u8) (IPW_MAX_RATES - num_rates));
 for (i = 0; i < num_rates; i++) {
  if (!ipw_is_rate_in_mask(priv, network->mode,
      network->rates_ex[i])) {
   if (network->rates_ex[i] & LIBIPW_BASIC_RATE_MASK) {
    IPW_DEBUG_SCAN("Adding masked mandatory "
            "rate %02X\n",
            network->rates_ex[i]);
    rates->supported_rates[rates->num_rates++] =
        network->rates[i];
    continue;
   }

   IPW_DEBUG_SCAN("Rate %02X masked : 0x%08X\n",
           network->rates_ex[i], priv->rates_mask);
   continue;
  }

  rates->supported_rates[rates->num_rates++] =
      network->rates_ex[i];
 }

 return 1;
}
