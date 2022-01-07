
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int mii_getbit (struct net_device*) ;
 int mii_send_bits (struct net_device*,int,int) ;

__attribute__((used)) static int miiport_read(struct net_device *dev, int phy_id, int reg)
{
 u32 cmd;
 int i;
 u32 retval = 0;


 mii_send_bits (dev, 0xffffffff, 32);


 cmd = (0x06 << 10) | (phy_id << 5) | reg;
 mii_send_bits (dev, cmd, 14);

 if (mii_getbit (dev))
  return 0;

 for (i = 0; i < 16; i++) {
  retval <<= 1;
  retval |= mii_getbit (dev);
 }

 mii_getbit (dev);
 return retval;
}
