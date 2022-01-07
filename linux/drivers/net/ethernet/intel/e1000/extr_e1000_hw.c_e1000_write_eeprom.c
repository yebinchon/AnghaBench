
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_do_write_eeprom (struct e1000_hw*,int ,int ,int *) ;
 int e1000_eeprom_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

s32 e1000_write_eeprom(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
 s32 ret;

 mutex_lock(&e1000_eeprom_lock);
 ret = e1000_do_write_eeprom(hw, offset, words, data);
 mutex_unlock(&e1000_eeprom_lock);
 return ret;
}
