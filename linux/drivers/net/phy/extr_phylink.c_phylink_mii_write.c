
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int link_an_mode; } ;


 int EOPNOTSUPP ;




__attribute__((used)) static int phylink_mii_write(struct phylink *pl, unsigned int phy_id,
        unsigned int reg, unsigned int val)
{
 switch (pl->link_an_mode) {
 case 130:
  break;

 case 128:
  return -EOPNOTSUPP;

 case 129:
  break;
 }

 return 0;
}
