
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int dummy; } ;


 int EIO ;
 int JME_EEPROM_RELOAD_TIMEOUT ;
 int JME_SMBCSR ;
 int SMBCSR_CNACK ;
 int SMBCSR_EEPROMD ;
 int SMBCSR_RELOAD ;
 int jread32 (struct jme_adapter*,int ) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int mdelay (int) ;
 int pr_err (char*) ;

__attribute__((used)) static int
jme_reload_eeprom(struct jme_adapter *jme)
{
 u32 val;
 int i;

 val = jread32(jme, JME_SMBCSR);

 if (val & SMBCSR_EEPROMD) {
  val |= SMBCSR_CNACK;
  jwrite32(jme, JME_SMBCSR, val);
  val |= SMBCSR_RELOAD;
  jwrite32(jme, JME_SMBCSR, val);
  mdelay(12);

  for (i = JME_EEPROM_RELOAD_TIMEOUT; i > 0; --i) {
   mdelay(1);
   if ((jread32(jme, JME_SMBCSR) & SMBCSR_RELOAD) == 0)
    break;
  }

  if (i == 0) {
   pr_err("eeprom reload timeout\n");
   return -EIO;
  }
 }

 return 0;
}
