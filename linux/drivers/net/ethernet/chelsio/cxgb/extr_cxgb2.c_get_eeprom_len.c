
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct adapter* ml_priv; } ;
struct adapter {int dummy; } ;


 int EEPROM_SIZE ;
 scalar_t__ t1_is_asic (struct adapter*) ;

__attribute__((used)) static int get_eeprom_len(struct net_device *dev)
{
 struct adapter *adapter = dev->ml_priv;

 return t1_is_asic(adapter) ? EEPROM_SIZE : 0;
}
