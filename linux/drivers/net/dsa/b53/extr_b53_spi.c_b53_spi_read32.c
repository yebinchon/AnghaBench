
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct b53_device {int dummy; } ;


 int b53_spi_read (struct b53_device*,int ,int ,int *,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int b53_spi_read32(struct b53_device *dev, u8 page, u8 reg, u32 *val)
{
 int ret = b53_spi_read(dev, page, reg, (u8 *)val, 4);

 if (!ret)
  *val = le32_to_cpu(*val);

 return ret;
}
