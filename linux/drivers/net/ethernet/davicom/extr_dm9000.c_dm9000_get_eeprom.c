
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;
struct board_info {int flags; } ;


 int DM9000_PLATF_NO_EEPROM ;
 int DM_EEPROM_MAGIC ;
 int EINVAL ;
 int ENOENT ;
 int dm9000_read_eeprom (struct board_info*,int,int *) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_get_eeprom(struct net_device *dev,
        struct ethtool_eeprom *ee, u8 *data)
{
 struct board_info *dm = to_dm9000_board(dev);
 int offset = ee->offset;
 int len = ee->len;
 int i;



 if ((len & 1) != 0 || (offset & 1) != 0)
  return -EINVAL;

 if (dm->flags & DM9000_PLATF_NO_EEPROM)
  return -ENOENT;

 ee->magic = DM_EEPROM_MAGIC;

 for (i = 0; i < len; i += 2)
  dm9000_read_eeprom(dm, (offset + i) / 2, data + i);

 return 0;
}
