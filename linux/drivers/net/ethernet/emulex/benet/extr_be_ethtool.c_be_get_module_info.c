
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;
struct be_adapter {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8472 ;
 int MAX_PRIVILEGES ;
 int PAGE_DATA_LEN ;
 size_t SFP_PLUS_SFF_8472_COMP ;
 int TR_PAGE_A0 ;
 int be_cmd_read_port_transceiver_data (struct be_adapter*,int ,int *) ;
 int be_cmd_status (int) ;
 int check_privilege (struct be_adapter*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_module_info(struct net_device *netdev,
         struct ethtool_modinfo *modinfo)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 u8 page_data[PAGE_DATA_LEN];
 int status;

 if (!check_privilege(adapter, MAX_PRIVILEGES))
  return -EOPNOTSUPP;

 status = be_cmd_read_port_transceiver_data(adapter, TR_PAGE_A0,
         page_data);
 if (!status) {
  if (!page_data[SFP_PLUS_SFF_8472_COMP]) {
   modinfo->type = ETH_MODULE_SFF_8079;
   modinfo->eeprom_len = PAGE_DATA_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8472;
   modinfo->eeprom_len = 2 * PAGE_DATA_LEN;
  }
 }
 return be_cmd_status(status);
}
