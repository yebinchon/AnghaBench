
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int EINVAL ;
 int MII_BMCR ;
 int mdio_read (struct net_device*,int ) ;
 int mdio_write (struct net_device*,int ,int) ;

__attribute__((used)) static int nway_reset(struct net_device *dev)
{
 int tmp;
 int r = -EINVAL;

 tmp = mdio_read(dev, MII_BMCR);
 if (tmp & BMCR_ANENABLE) {
  tmp |= (BMCR_ANRESTART);
  mdio_write(dev, MII_BMCR, tmp);
  r = 0;
 }
 return r;
}
