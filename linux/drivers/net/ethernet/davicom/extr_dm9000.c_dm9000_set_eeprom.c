
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; scalar_t__ magic; } ;
struct board_info {int flags; } ;


 int DM9000_PLATF_NO_EEPROM ;
 scalar_t__ DM_EEPROM_MAGIC ;
 int EINVAL ;
 int ENOENT ;
 int dm9000_read_eeprom (struct board_info*,int,int *) ;
 int dm9000_write_eeprom (struct board_info*,int,int *) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_eeprom(struct net_device *dev,
        struct ethtool_eeprom *ee, u8 *data)
{
 struct board_info *dm = to_dm9000_board(dev);
 int offset = ee->offset;
 int len = ee->len;
 int done;



 if (dm->flags & DM9000_PLATF_NO_EEPROM)
  return -ENOENT;

 if (ee->magic != DM_EEPROM_MAGIC)
  return -EINVAL;

 while (len > 0) {
  if (len & 1 || offset & 1) {
   int which = offset & 1;
   u8 tmp[2];

   dm9000_read_eeprom(dm, offset / 2, tmp);
   tmp[which] = *data;
   dm9000_write_eeprom(dm, offset / 2, tmp);

   done = 1;
  } else {
   dm9000_write_eeprom(dm, offset / 2, data);
   done = 2;
  }

  data += done;
  offset += done;
  len -= done;
 }

 return 0;
}
