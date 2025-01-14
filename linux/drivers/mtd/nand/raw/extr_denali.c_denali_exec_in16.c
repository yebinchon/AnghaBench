
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct denali_controller {int (* host_read ) (struct denali_controller*,int) ;} ;


 int DENALI_BANK (struct denali_controller*) ;
 int stub1 (struct denali_controller*,int) ;

__attribute__((used)) static void denali_exec_in16(struct denali_controller *denali, u32 type,
        u8 *buf, unsigned int len)
{
 u32 data;
 int i;

 for (i = 0; i < len; i += 2) {
  data = denali->host_read(denali, type | DENALI_BANK(denali));

  buf[i] = data;
  buf[i + 1] = data >> 16;
 }
}
