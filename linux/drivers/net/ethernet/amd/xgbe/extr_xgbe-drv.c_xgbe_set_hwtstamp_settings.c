
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* config_tstamp ) (struct xgbe_prv_data*,unsigned int) ;} ;
struct xgbe_prv_data {int tstamp_config; TYPE_1__ hw_if; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int config ;


 int AV8021ASMEN ;
 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int MAC_TSCR ;
 int SNAPTYPSEL ;
 int TSENA ;
 int TSENALL ;
 int TSEVNTENA ;
 int TSIPENA ;
 int TSIPV4ENA ;
 int TSIPV6ENA ;
 int TSMSTRENA ;
 int TSVER2ENA ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 int memcpy (int *,struct hwtstamp_config*,int) ;
 int stub1 (struct xgbe_prv_data*,unsigned int) ;

__attribute__((used)) static int xgbe_set_hwtstamp_settings(struct xgbe_prv_data *pdata,
          struct ifreq *ifreq)
{
 struct hwtstamp_config config;
 unsigned int mac_tscr;

 if (copy_from_user(&config, ifreq->ifr_data, sizeof(config)))
  return -EFAULT;

 if (config.flags)
  return -EINVAL;

 mac_tscr = 0;

 switch (config.tx_type) {
 case 129:
  break;

 case 128:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;

 default:
  return -ERANGE;
 }

 switch (config.rx_filter) {
 case 143:
  break;

 case 142:
 case 144:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENALL, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 132:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSVER2ENA, 1);

 case 140:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV4ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV6ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, SNAPTYPSEL, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 131:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSVER2ENA, 1);

 case 139:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV4ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV6ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSEVNTENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 133:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSVER2ENA, 1);

 case 141:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV4ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV6ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSEVNTENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSMSTRENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 135:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, AV8021ASMEN, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, SNAPTYPSEL, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 134:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, AV8021ASMEN, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSEVNTENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 136:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, AV8021ASMEN, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSMSTRENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSEVNTENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 137:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSVER2ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV4ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV6ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, SNAPTYPSEL, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 130:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSVER2ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV4ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV6ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSEVNTENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;


 case 138:
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSVER2ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV4ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSIPV6ENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSMSTRENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSEVNTENA, 1);
  XGMAC_SET_BITS(mac_tscr, MAC_TSCR, TSENA, 1);
  break;

 default:
  return -ERANGE;
 }

 pdata->hw_if.config_tstamp(pdata, mac_tscr);

 memcpy(&pdata->tstamp_config, &config, sizeof(config));

 return 0;
}
