
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_device {int features; } ;


 int NEW_XMII ;



 int PORT_MII_SEL_M ;




__attribute__((used)) static int ksz9477_get_xmii(struct ksz_device *dev, u8 data)
{
 int mode;

 if (dev->features & NEW_XMII) {
  switch (data & PORT_MII_SEL_M) {
  case 131:
   mode = 0;
   break;
  case 129:
   mode = 1;
   break;
  case 133:
   mode = 2;
   break;
  default:
   mode = 3;
  }
 } else {
  switch (data & PORT_MII_SEL_M) {
  case 130:
   mode = 0;
   break;
  case 128:
   mode = 1;
   break;
  case 132:
   mode = 2;
   break;
  default:
   mode = 3;
  }
 }
 return mode;
}
