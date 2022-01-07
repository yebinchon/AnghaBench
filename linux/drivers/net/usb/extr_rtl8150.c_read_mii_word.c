
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int rtl8150_t ;
typedef int data ;
typedef int __u8 ;


 int MII_TIMEOUT ;
 int PHYADD ;
 int PHYCNT ;
 int PHYDAT ;
 int PHY_GO ;
 int PHY_READ ;
 int get_registers (int *,int ,int,int*) ;
 int set_registers (int *,int ,int,int*) ;

__attribute__((used)) static int read_mii_word(rtl8150_t * dev, u8 phy, __u8 indx, u16 * reg)
{
 int i;
 u8 data[3], tmp;

 data[0] = phy;
 data[1] = data[2] = 0;
 tmp = indx | PHY_READ | PHY_GO;
 i = 0;

 set_registers(dev, PHYADD, sizeof(data), data);
 set_registers(dev, PHYCNT, 1, &tmp);
 do {
  get_registers(dev, PHYCNT, 1, data);
 } while ((data[0] & PHY_GO) && (i++ < MII_TIMEOUT));

 if (i <= MII_TIMEOUT) {
  get_registers(dev, PHYDAT, 2, data);
  *reg = data[0] | (data[1] << 8);
  return 0;
 } else
  return 1;
}
