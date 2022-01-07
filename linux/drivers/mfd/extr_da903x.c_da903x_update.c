
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;
struct da903x_chip {int lock; int client; } ;


 int __da903x_read (int ,int,int*) ;
 int __da903x_write (int ,int,int) ;
 struct da903x_chip* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int da903x_update(struct device *dev, int reg, uint8_t val, uint8_t mask)
{
 struct da903x_chip *chip = dev_get_drvdata(dev);
 uint8_t reg_val;
 int ret = 0;

 mutex_lock(&chip->lock);

 ret = __da903x_read(chip->client, reg, &reg_val);
 if (ret)
  goto out;

 if ((reg_val & mask) != val) {
  reg_val = (reg_val & ~mask) | val;
  ret = __da903x_write(chip->client, reg, reg_val);
 }
out:
 mutex_unlock(&chip->lock);
 return ret;
}
