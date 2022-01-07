
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ieee802154_hw {struct cc2520_private* priv; } ;
struct cc2520_private {int dummy; } ;


 int CC2520_RSSI ;
 int CC2520_RSSISTAT ;
 int EINVAL ;
 scalar_t__ RSSI_OFFSET ;
 scalar_t__ RSSI_VALID ;
 int cc2520_read_register (struct cc2520_private*,int ,scalar_t__*) ;

__attribute__((used)) static int
cc2520_ed(struct ieee802154_hw *hw, u8 *level)
{
 struct cc2520_private *priv = hw->priv;
 u8 status = 0xff;
 u8 rssi;
 int ret;

 ret = cc2520_read_register(priv, CC2520_RSSISTAT, &status);
 if (ret)
  return ret;

 if (status != RSSI_VALID)
  return -EINVAL;

 ret = cc2520_read_register(priv, CC2520_RSSI, &rssi);
 if (ret)
  return ret;


 *level = rssi - RSSI_OFFSET;

 return 0;
}
