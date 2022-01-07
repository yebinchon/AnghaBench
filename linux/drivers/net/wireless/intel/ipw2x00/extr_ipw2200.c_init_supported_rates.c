
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_supported_rates {void* purpose; int ieee_mode; } ;
struct ipw_priv {TYPE_1__* ieee; } ;
struct TYPE_2__ {int freq_band; int modulation; } ;


 int IPW_A_MODE ;
 int IPW_G_MODE ;
 void* IPW_RATE_CAPABILITIES ;

 int LIBIPW_CCK_DEFAULT_RATES_MASK ;
 int LIBIPW_CCK_MODULATION ;
 int LIBIPW_OFDM_DEFAULT_RATES_MASK ;
 int LIBIPW_OFDM_MODULATION ;
 int ipw_add_cck_scan_rates (struct ipw_supported_rates*,int ,int ) ;
 int ipw_add_ofdm_scan_rates (struct ipw_supported_rates*,int ,int ) ;
 int memset (struct ipw_supported_rates*,int ,int) ;

__attribute__((used)) static int init_supported_rates(struct ipw_priv *priv,
    struct ipw_supported_rates *rates)
{


 memset(rates, 0, sizeof(*rates));

 switch (priv->ieee->freq_band) {
 case 128:
  rates->ieee_mode = IPW_A_MODE;
  rates->purpose = IPW_RATE_CAPABILITIES;
  ipw_add_ofdm_scan_rates(rates, LIBIPW_CCK_MODULATION,
     LIBIPW_OFDM_DEFAULT_RATES_MASK);
  break;

 default:
  rates->ieee_mode = IPW_G_MODE;
  rates->purpose = IPW_RATE_CAPABILITIES;
  ipw_add_cck_scan_rates(rates, LIBIPW_CCK_MODULATION,
           LIBIPW_CCK_DEFAULT_RATES_MASK);
  if (priv->ieee->modulation & LIBIPW_OFDM_MODULATION) {
   ipw_add_ofdm_scan_rates(rates, LIBIPW_CCK_MODULATION,
      LIBIPW_OFDM_DEFAULT_RATES_MASK);
  }
  break;
 }

 return 0;
}
