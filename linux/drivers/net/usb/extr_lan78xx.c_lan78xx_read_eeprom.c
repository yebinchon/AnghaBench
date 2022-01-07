
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct lan78xx_net {int dummy; } ;


 scalar_t__ EEPROM_INDICATOR ;
 int EINVAL ;
 int lan78xx_read_raw_eeprom (struct lan78xx_net*,int,int,scalar_t__*) ;

__attribute__((used)) static int lan78xx_read_eeprom(struct lan78xx_net *dev, u32 offset,
          u32 length, u8 *data)
{
 u8 sig;
 int ret;

 ret = lan78xx_read_raw_eeprom(dev, 0, 1, &sig);
 if ((ret == 0) && (sig == EEPROM_INDICATOR))
  ret = lan78xx_read_raw_eeprom(dev, offset, length, data);
 else
  ret = -EINVAL;

 return ret;
}
