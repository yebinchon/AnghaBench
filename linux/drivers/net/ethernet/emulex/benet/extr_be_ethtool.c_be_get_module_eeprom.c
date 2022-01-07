
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ offset; scalar_t__ len; } ;
struct be_adapter {int dummy; } ;


 int EOPNOTSUPP ;
 int MAX_PRIVILEGES ;
 scalar_t__ PAGE_DATA_LEN ;
 int TR_PAGE_A0 ;
 int TR_PAGE_A2 ;
 int be_cmd_read_port_transceiver_data (struct be_adapter*,int ,int *) ;
 int be_cmd_status (int) ;
 int check_privilege (struct be_adapter*,int ) ;
 int memcpy (int *,int *,scalar_t__) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_module_eeprom(struct net_device *netdev,
    struct ethtool_eeprom *eeprom, u8 *data)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int status;

 if (!check_privilege(adapter, MAX_PRIVILEGES))
  return -EOPNOTSUPP;

 status = be_cmd_read_port_transceiver_data(adapter, TR_PAGE_A0,
         data);
 if (status)
  goto err;

 if (eeprom->offset + eeprom->len > PAGE_DATA_LEN) {
  status = be_cmd_read_port_transceiver_data(adapter,
          TR_PAGE_A2,
          data +
          PAGE_DATA_LEN);
  if (status)
   goto err;
 }
 if (eeprom->offset)
  memcpy(data, data + eeprom->offset, eeprom->len);
err:
 return be_cmd_status(status);
}
