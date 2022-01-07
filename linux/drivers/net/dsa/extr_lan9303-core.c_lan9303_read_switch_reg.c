
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct lan9303 {int indirect_mutex; int dev; int regmap; } ;


 int LAN9303_SWITCH_CSR_CMD ;
 int LAN9303_SWITCH_CSR_CMD_BUSY ;
 int LAN9303_SWITCH_CSR_CMD_LANES ;
 int LAN9303_SWITCH_CSR_CMD_RW ;
 int LAN9303_SWITCH_CSR_DATA ;
 int dev_err (int ,char*,int) ;
 int lan9303_read (int ,int ,int *) ;
 int lan9303_switch_wait_for_completion (struct lan9303*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int lan9303_read_switch_reg(struct lan9303 *chip, u16 regnum, u32 *val)
{
 u32 reg;
 int ret;

 reg = regnum;
 reg |= LAN9303_SWITCH_CSR_CMD_LANES;
 reg |= LAN9303_SWITCH_CSR_CMD_RW;
 reg |= LAN9303_SWITCH_CSR_CMD_BUSY;

 mutex_lock(&chip->indirect_mutex);

 ret = lan9303_switch_wait_for_completion(chip);
 if (ret)
  goto on_error;


 ret = regmap_write(chip->regmap, LAN9303_SWITCH_CSR_CMD, reg);
 if (ret) {
  dev_err(chip->dev, "Failed to write csr command reg: %d\n",
   ret);
  goto on_error;
 }

 ret = lan9303_switch_wait_for_completion(chip);
 if (ret)
  goto on_error;

 ret = lan9303_read(chip->regmap, LAN9303_SWITCH_CSR_DATA, val);
 if (ret)
  dev_err(chip->dev, "Failed to read csr data reg: %d\n", ret);
on_error:
 mutex_unlock(&chip->indirect_mutex);
 return ret;
}
