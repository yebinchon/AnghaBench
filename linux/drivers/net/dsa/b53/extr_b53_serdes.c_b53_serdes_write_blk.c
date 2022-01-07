
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b53_device {int dummy; } ;


 int B53_SERDES_BLKADDR ;
 int B53_SERDES_PAGE ;
 int b53_write16 (struct b53_device*,int ,int ,int ) ;

__attribute__((used)) static void b53_serdes_write_blk(struct b53_device *dev, u8 offset, u16 block,
     u16 value)
{
 b53_write16(dev, B53_SERDES_PAGE, B53_SERDES_BLKADDR, block);
 b53_write16(dev, B53_SERDES_PAGE, offset, value);
}
