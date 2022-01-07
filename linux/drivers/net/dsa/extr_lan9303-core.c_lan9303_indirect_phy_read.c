
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan9303 {int indirect_mutex; int regmap; } ;


 int LAN9303_PMI_ACCESS ;
 int LAN9303_PMI_ACCESS_MIIRINDA (int) ;
 int LAN9303_PMI_ACCESS_PHY_ADDR (int) ;
 int LAN9303_PMI_DATA ;
 int lan9303_indirect_phy_wait_for_completion (struct lan9303*) ;
 int lan9303_read (int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lan9303_indirect_phy_read(struct lan9303 *chip, int addr, int regnum)
{
 int ret;
 u32 val;

 val = LAN9303_PMI_ACCESS_PHY_ADDR(addr);
 val |= LAN9303_PMI_ACCESS_MIIRINDA(regnum);

 mutex_lock(&chip->indirect_mutex);

 ret = lan9303_indirect_phy_wait_for_completion(chip);
 if (ret)
  goto on_error;


 ret = regmap_write(chip->regmap, LAN9303_PMI_ACCESS, val);
 if (ret)
  goto on_error;

 ret = lan9303_indirect_phy_wait_for_completion(chip);
 if (ret)
  goto on_error;


 ret = lan9303_read(chip->regmap, LAN9303_PMI_DATA, &val);
 if (ret)
  goto on_error;

 mutex_unlock(&chip->indirect_mutex);

 return val & 0xffff;

on_error:
 mutex_unlock(&chip->indirect_mutex);
 return ret;
}
