
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hwtstamp_config {int rx_filter; int tx_type; } ;
typedef enum hwtstamp_tx_types { ____Placeholder_hwtstamp_tx_types } hwtstamp_tx_types ;
typedef enum hwtstamp_rx_filters { ____Placeholder_hwtstamp_rx_filters } hwtstamp_rx_filters ;


 int ERANGE ;
__attribute__((used)) static int mlxsw_sp_ptp_get_message_types(const struct hwtstamp_config *config,
       u16 *p_ing_types, u16 *p_egr_types,
       enum hwtstamp_rx_filters *p_rx_filter)
{
 enum hwtstamp_rx_filters rx_filter = config->rx_filter;
 enum hwtstamp_tx_types tx_type = config->tx_type;
 u16 ing_types = 0x00;
 u16 egr_types = 0x00;

 switch (tx_type) {
 case 130:
  egr_types = 0x00;
  break;
 case 129:
  egr_types = 0xff;
  break;
 case 128:
  return -ERANGE;
 }

 switch (rx_filter) {
 case 145:
  ing_types = 0x00;
  break;
 case 141:
 case 133:
 case 136:
 case 132:
  ing_types = 0x01;
  break;
 case 143:
 case 135:
 case 138:
 case 140:
  ing_types = 0x02;
  break;
 case 142:
 case 134:
 case 137:
 case 139:
  ing_types = 0x0f;
  break;
 case 146:
  ing_types = 0xff;
  break;
 case 131:
 case 144:
  return -ERANGE;
 }

 *p_ing_types = ing_types;
 *p_egr_types = egr_types;
 *p_rx_filter = rx_filter;
 return 0;
}
