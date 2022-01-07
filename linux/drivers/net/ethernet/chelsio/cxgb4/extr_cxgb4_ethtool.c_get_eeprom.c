
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;
struct adapter {int dummy; } ;


 int EEPROMSIZE ;
 int EEPROM_MAGIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int eeprom_rd_phys (struct adapter*,int,int *) ;
 int kvfree (int *) ;
 int * kvzalloc (int ,int ) ;
 int memcpy (int *,int *,int) ;
 struct adapter* netdev2adap (struct net_device*) ;

__attribute__((used)) static int get_eeprom(struct net_device *dev, struct ethtool_eeprom *e,
        u8 *data)
{
 int i, err = 0;
 struct adapter *adapter = netdev2adap(dev);
 u8 *buf = kvzalloc(EEPROMSIZE, GFP_KERNEL);

 if (!buf)
  return -ENOMEM;

 e->magic = EEPROM_MAGIC;
 for (i = e->offset & ~3; !err && i < e->offset + e->len; i += 4)
  err = eeprom_rd_phys(adapter, i, (u32 *)&buf[i]);

 if (!err)
  memcpy(data, buf + e->offset, e->len);
 kvfree(buf);
 return err;
}
