
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct port_info {int tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;
struct adapter {int mbox; } ;


 int I2C_DEV_ADDR_A0 ;
 int I2C_DEV_ADDR_A2 ;
 int I2C_PAGE_SIZE ;
 int memset (int *,int ,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_i2c_rd (struct adapter*,int ,int ,int ,int,int,int *) ;

__attribute__((used)) static int cxgb4_get_module_eeprom(struct net_device *dev,
       struct ethtool_eeprom *eprom, u8 *data)
{
 int ret = 0, offset = eprom->offset, len = eprom->len;
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 memset(data, 0, eprom->len);
 if (offset + len <= I2C_PAGE_SIZE)
  return t4_i2c_rd(adapter, adapter->mbox, pi->tx_chan,
     I2C_DEV_ADDR_A0, offset, len, data);


 if (offset <= I2C_PAGE_SIZE) {

  len = I2C_PAGE_SIZE - offset;
  ret = t4_i2c_rd(adapter, adapter->mbox, pi->tx_chan,
     I2C_DEV_ADDR_A0, offset, len, data);
  if (ret)
   return ret;
  offset = I2C_PAGE_SIZE;



  len = eprom->len - len;
 }

 return t4_i2c_rd(adapter, adapter->mbox, pi->tx_chan, I2C_DEV_ADDR_A2,
    offset, len, &data[eprom->len - len]);
}
