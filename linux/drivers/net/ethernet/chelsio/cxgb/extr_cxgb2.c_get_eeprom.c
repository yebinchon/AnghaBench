
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {struct adapter* ml_priv; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;
struct adapter {int dummy; } ;
typedef int __le32 ;


 int EEPROM_MAGIC (struct adapter*) ;
 int EEPROM_SIZE ;
 int memcpy (int *,int *,int) ;
 int t1_seeprom_read (struct adapter*,int,int *) ;

__attribute__((used)) static int get_eeprom(struct net_device *dev, struct ethtool_eeprom *e,
        u8 *data)
{
 int i;
 u8 buf[EEPROM_SIZE] __attribute__((aligned(4)));
 struct adapter *adapter = dev->ml_priv;

 e->magic = EEPROM_MAGIC(adapter);
 for (i = e->offset & ~3; i < e->offset + e->len; i += sizeof(u32))
  t1_seeprom_read(adapter, i, (__le32 *)&buf[i]);
 memcpy(data, buf + e->offset, e->len);
 return 0;
}
