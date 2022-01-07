
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct idt_89hpesx_dev {int smb_mtx; } ;


 int idt_eeprom_read_byte (struct idt_89hpesx_dev*,size_t,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int idt_eeprom_read(struct idt_89hpesx_dev *pdev, u16 memaddr, u16 len,
      u8 *buf)
{
 int ret;
 u16 idx;


 for (idx = 0; idx < len; idx++, memaddr++) {

  mutex_lock(&pdev->smb_mtx);


  ret = idt_eeprom_read_byte(pdev, memaddr, &buf[idx]);


  mutex_unlock(&pdev->smb_mtx);


  if (ret != 0)
   return ret;
 }

 return 0;
}
