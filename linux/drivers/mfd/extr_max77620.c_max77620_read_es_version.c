
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct max77620_chip {int dev; int rmap; } ;


 int MAX77620_CID5_DIDM (unsigned int) ;
 int MAX77620_REG_CID0 ;
 int MAX77620_REG_CID5 ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,unsigned int,int ) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int max77620_read_es_version(struct max77620_chip *chip)
{
 unsigned int val;
 u8 cid_val[6];
 int i;
 int ret;

 for (i = MAX77620_REG_CID0; i <= MAX77620_REG_CID5; i++) {
  ret = regmap_read(chip->rmap, i, &val);
  if (ret < 0) {
   dev_err(chip->dev, "Failed to read CID: %d\n", ret);
   return ret;
  }
  dev_dbg(chip->dev, "CID%d: 0x%02x\n",
   i - MAX77620_REG_CID0, val);
  cid_val[i - MAX77620_REG_CID0] = val;
 }


 dev_info(chip->dev, "PMIC Version OTP:0x%02X and ES:0x%X\n",
   cid_val[4], MAX77620_CID5_DIDM(cid_val[5]));

 return ret;
}
