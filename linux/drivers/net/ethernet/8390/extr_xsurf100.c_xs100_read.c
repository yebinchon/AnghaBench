
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct xsurf100_ax_plat_data {scalar_t__ data_area; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ei_device {scalar_t__ mem; } ;


 scalar_t__ NE_DATAPORT ;
 unsigned int XS100_8390_DATA_AREA_SIZE ;
 scalar_t__ XS100_8390_DATA_READ32_BASE ;
 struct xsurf100_ax_plat_data* dev_get_platdata (int *) ;
 int ei_inb (scalar_t__) ;
 int ei_inw (scalar_t__) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 struct platform_device* to_platform_device (int ) ;
 int z_memcpy_fromio32 (void*,scalar_t__,unsigned int) ;

__attribute__((used)) static void xs100_read(struct net_device *dev, void *dst, unsigned int count)
{
 struct ei_device *ei_local = netdev_priv(dev);
 struct platform_device *pdev = to_platform_device(dev->dev.parent);
 struct xsurf100_ax_plat_data *xs100 = dev_get_platdata(&pdev->dev);


 while (count > XS100_8390_DATA_AREA_SIZE) {
  z_memcpy_fromio32(dst, xs100->data_area +
      XS100_8390_DATA_READ32_BASE,
      XS100_8390_DATA_AREA_SIZE);
  dst += XS100_8390_DATA_AREA_SIZE;
  count -= XS100_8390_DATA_AREA_SIZE;
 }

 z_memcpy_fromio32(dst, xs100->data_area + XS100_8390_DATA_READ32_BASE,
     count & ~3);
 dst += count & ~3;
 if (count & 2) {
  *(uint16_t *)dst = ei_inw(ei_local->mem + NE_DATAPORT);
  dst += 2;
 }
 if (count & 1)
  *(uint8_t *)dst = ei_inb(ei_local->mem + NE_DATAPORT);
}
