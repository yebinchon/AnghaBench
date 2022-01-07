
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct denali_controller {int (* host_write ) (struct denali_controller*,int,int const) ;} ;


 int DENALI_BANK (struct denali_controller*) ;
 int stub1 (struct denali_controller*,int,int const) ;

__attribute__((used)) static void denali_exec_out16(struct denali_controller *denali, u32 type,
         const u8 *buf, unsigned int len)
{
 int i;

 for (i = 0; i < len; i += 2)
  denali->host_write(denali, type | DENALI_BANK(denali),
       buf[i + 1] << 16 | buf[i]);
}
