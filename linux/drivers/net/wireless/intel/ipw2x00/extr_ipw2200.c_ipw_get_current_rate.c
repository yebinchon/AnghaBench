
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int status; scalar_t__ tx_packets; } ;
typedef int rate ;


 int IPW_DEBUG_INFO (char*) ;
 int IPW_ORD_STAT_TX_CURR_RATE ;
 scalar_t__ IPW_REAL_RATE_RX_PACKET_THRESHOLD ;
 int STATUS_ASSOCIATED ;
 int ipw_get_max_rate (struct ipw_priv*) ;
 int ipw_get_ordinal (struct ipw_priv*,int ,int*,int*) ;

__attribute__((used)) static u32 ipw_get_current_rate(struct ipw_priv *priv)
{
 u32 rate, len = sizeof(rate);
 int err;

 if (!(priv->status & STATUS_ASSOCIATED))
  return 0;

 if (priv->tx_packets > IPW_REAL_RATE_RX_PACKET_THRESHOLD) {
  err = ipw_get_ordinal(priv, IPW_ORD_STAT_TX_CURR_RATE, &rate,
          &len);
  if (err) {
   IPW_DEBUG_INFO("failed querying ordinals.\n");
   return 0;
  }
 } else
  return ipw_get_max_rate(priv);

 switch (rate) {
 case 136:
  return 1000000;
 case 134:
  return 2000000;
 case 130:
  return 5500000;
 case 129:
  return 6000000;
 case 128:
  return 9000000;
 case 139:
  return 11000000;
 case 138:
  return 12000000;
 case 137:
  return 18000000;
 case 135:
  return 24000000;
 case 133:
  return 36000000;
 case 132:
  return 48000000;
 case 131:
  return 54000000;
 }

 return 0;
}
