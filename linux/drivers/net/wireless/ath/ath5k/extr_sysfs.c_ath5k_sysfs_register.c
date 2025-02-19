
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct ath5k_hw {struct device* dev; } ;


 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 int ath5k_attribute_group_ani ;
 int sysfs_create_group (int *,int *) ;

int
ath5k_sysfs_register(struct ath5k_hw *ah)
{
 struct device *dev = ah->dev;
 int err;

 err = sysfs_create_group(&dev->kobj, &ath5k_attribute_group_ani);
 if (err) {
  ATH5K_ERR(ah, "failed to create sysfs group\n");
  return err;
 }

 return 0;
}
