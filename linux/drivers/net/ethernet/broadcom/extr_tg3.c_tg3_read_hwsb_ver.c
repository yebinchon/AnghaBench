
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int * fw_ver; } ;


 int TG3_NVM_HWSB_CFG1 ;
 int TG3_NVM_HWSB_CFG1_MAJMSK ;
 int TG3_NVM_HWSB_CFG1_MAJSFT ;
 int TG3_NVM_HWSB_CFG1_MINMSK ;
 int TG3_NVM_HWSB_CFG1_MINSFT ;
 int snprintf (int *,int,char*,int,int) ;
 scalar_t__ tg3_nvram_read (struct tg3*,int ,int*) ;

__attribute__((used)) static void tg3_read_hwsb_ver(struct tg3 *tp)
{
 u32 val, major, minor;


 if (tg3_nvram_read(tp, TG3_NVM_HWSB_CFG1, &val))
  return;

 major = (val & TG3_NVM_HWSB_CFG1_MAJMSK) >>
  TG3_NVM_HWSB_CFG1_MAJSFT;
 minor = (val & TG3_NVM_HWSB_CFG1_MINMSK) >>
  TG3_NVM_HWSB_CFG1_MINSFT;

 snprintf(&tp->fw_ver[0], 32, "sb v%d.%02d", major, minor);
}
