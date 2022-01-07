
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct eeprom_private* private_data; } ;
struct eeprom_private {int buf; } ;


 int kfree (struct eeprom_private*) ;
 int vfree (int ) ;

__attribute__((used)) static int release_file_eeprom(struct inode *inode, struct file *file)
{
 struct eeprom_private *ep = file->private_data;

 vfree(ep->buf);
 kfree(ep);

 return 0;
}
