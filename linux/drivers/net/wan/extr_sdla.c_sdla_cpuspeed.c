
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct ifreq {int ifr_mtu; } ;


 int EINVAL ;
 int EIO ;
 int HZ ;
 char LOADER_READY ;
 int SDLA_CPU_10M ;
 int SDLA_CPU_16M ;
 int SDLA_CPU_3M ;
 int SDLA_CPU_5M ;
 int SDLA_CPU_7M ;
 int SDLA_CPU_8M ;
 char Z80_READY ;
 char Z80_SCC_BAD ;
 char Z80_SCC_OK ;
 int printk (char*,int ) ;
 int sdla_read (struct net_device*,int ,char*,int) ;
 int sdla_start (struct net_device*) ;
 int sdla_stop (struct net_device*) ;
 int sdla_write (struct net_device*,int ,char*,int) ;
 int sdla_z80_poll (struct net_device*,int ,int,char,char) ;

__attribute__((used)) static int sdla_cpuspeed(struct net_device *dev, struct ifreq *ifr)
{
 int jiffs;
 char data;

 sdla_start(dev);
 if (sdla_z80_poll(dev, 0, 3*HZ, Z80_READY, 0) < 0)
  return -EIO;

 data = LOADER_READY;
 sdla_write(dev, 0, &data, 1);

 if ((jiffs = sdla_z80_poll(dev, 0, 8*HZ, Z80_SCC_OK, Z80_SCC_BAD)) < 0)
  return -EIO;

 sdla_stop(dev);
 sdla_read(dev, 0, &data, 1);

 if (data == Z80_SCC_BAD)
 {
  printk("%s: SCC bad\n", dev->name);
  return -EIO;
 }

 if (data != Z80_SCC_OK)
  return -EINVAL;

 if (jiffs < 165)
  ifr->ifr_mtu = SDLA_CPU_16M;
 else if (jiffs < 220)
  ifr->ifr_mtu = SDLA_CPU_10M;
 else if (jiffs < 258)
  ifr->ifr_mtu = SDLA_CPU_8M;
 else if (jiffs < 357)
  ifr->ifr_mtu = SDLA_CPU_7M;
 else if (jiffs < 467)
  ifr->ifr_mtu = SDLA_CPU_5M;
 else
  ifr->ifr_mtu = SDLA_CPU_3M;

 return 0;
}
