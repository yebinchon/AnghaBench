
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;
struct adp5520_chip {int lock; int client; } ;


 int __adp5520_read (int ,int,int*) ;
 int __adp5520_write (int ,int,int) ;
 struct adp5520_chip* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int adp5520_clr_bits(struct device *dev, int reg, uint8_t bit_mask)
{
 struct adp5520_chip *chip = dev_get_drvdata(dev);
 uint8_t reg_val;
 int ret;

 mutex_lock(&chip->lock);

 ret = __adp5520_read(chip->client, reg, &reg_val);

 if (!ret && (reg_val & bit_mask)) {
  reg_val &= ~bit_mask;
  ret = __adp5520_write(chip->client, reg, reg_val);
 }

 mutex_unlock(&chip->lock);
 return ret;
}
