
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int mii_getbit (struct net_device*) ;
 int mii_send_bits (struct net_device*,int,int) ;

__attribute__((used)) static int
mii_read (struct net_device *dev, int phy_addr, int reg_num)
{
 u32 cmd;
 int i;
 u32 retval = 0;


 mii_send_bits (dev, 0xffffffff, 32);


 cmd = (0x06 << 10 | phy_addr << 5 | reg_num);
 mii_send_bits (dev, cmd, 14);

 if (mii_getbit (dev))
  goto err_out;

 for (i = 0; i < 16; i++) {
  retval |= mii_getbit (dev);
  retval <<= 1;
 }

 mii_getbit (dev);
 return (retval >> 1) & 0xffff;

      err_out:
 return 0;
}
