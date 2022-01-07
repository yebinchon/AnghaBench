
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int i2c_adap; } ;


 int i2c_del_adapter (int *) ;

__attribute__((used)) static void igb_remove_i2c(struct igb_adapter *adapter)
{

 i2c_del_adapter(&adapter->i2c_adap);
}
