
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int dummy; } ;


 int DYNAMIC_MAC_TABLE_MAC_EMPTY ;
 int DYNAMIC_MAC_TABLE_NOT_READY ;
 int EAGAIN ;
 int ENXIO ;
 int REG_IND_DATA_8 ;
 int REG_IND_DATA_CHECK ;
 int ksz_read8 (struct ksz_device*,int ,int*) ;

__attribute__((used)) static int ksz8795_valid_dyn_entry(struct ksz_device *dev, u8 *data)
{
 int timeout = 100;

 do {
  ksz_read8(dev, REG_IND_DATA_CHECK, data);
  timeout--;
 } while ((*data & DYNAMIC_MAC_TABLE_NOT_READY) && timeout);


 if (*data & DYNAMIC_MAC_TABLE_NOT_READY) {
  return -EAGAIN;

 } else {
  ksz_read8(dev, REG_IND_DATA_8, data);


  if (*data & DYNAMIC_MAC_TABLE_MAC_EMPTY)
   return -ENXIO;
 }
 return 0;
}
