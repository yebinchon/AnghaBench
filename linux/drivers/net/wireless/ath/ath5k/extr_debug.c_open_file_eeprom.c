
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct inode {struct ath5k_hw* i_private; } ;
struct file {void* private_data; } ;
struct eeprom_private {int* buf; int len; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_EEPROM_INFO_BASE ;
 int AR5K_EEPROM_INFO_MAX ;
 int AR5K_EEPROM_SIZE_ENDLOC_SHIFT ;
 int AR5K_EEPROM_SIZE_LOWER ;
 int AR5K_EEPROM_SIZE_UPPER ;
 int AR5K_EEPROM_SIZE_UPPER_MASK ;
 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int array_size (int,int) ;
 int ath5k_hw_nvram_read (struct ath5k_hw*,int,int*) ;
 struct eeprom_private* kmalloc (int,int ) ;
 int vfree (int*) ;
 int* vmalloc (int ) ;

__attribute__((used)) static int open_file_eeprom(struct inode *inode, struct file *file)
{
 struct eeprom_private *ep;
 struct ath5k_hw *ah = inode->i_private;
 bool res;
 int i, ret;
 u32 eesize;
 u16 val, *buf;



 res = ath5k_hw_nvram_read(ah, AR5K_EEPROM_SIZE_UPPER, &val);
 if (!res)
  return -EACCES;

 if (val == 0) {
  eesize = AR5K_EEPROM_INFO_MAX + AR5K_EEPROM_INFO_BASE;
 } else {
  eesize = (val & AR5K_EEPROM_SIZE_UPPER_MASK) <<
   AR5K_EEPROM_SIZE_ENDLOC_SHIFT;
  ath5k_hw_nvram_read(ah, AR5K_EEPROM_SIZE_LOWER, &val);
  eesize = eesize | val;
 }

 if (eesize > 4096)
  return -EINVAL;



 buf = vmalloc(array_size(eesize, 2));
 if (!buf) {
  ret = -ENOMEM;
  goto err;
 }

 for (i = 0; i < eesize; ++i) {
  if (!ath5k_hw_nvram_read(ah, i, &val)) {
   ret = -EIO;
   goto freebuf;
  }
  buf[i] = val;
 }



 ep = kmalloc(sizeof(*ep), GFP_KERNEL);
 if (!ep) {
  ret = -ENOMEM;
  goto freebuf;
 }

 ep->buf = buf;
 ep->len = eesize * 2;

 file->private_data = (void *)ep;

 return 0;

freebuf:
 vfree(buf);
err:
 return ret;

}
