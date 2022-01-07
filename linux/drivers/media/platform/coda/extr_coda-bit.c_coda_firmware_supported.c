
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* coda_supported_firmwares ;

__attribute__((used)) static bool coda_firmware_supported(u32 vernum)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(coda_supported_firmwares); i++)
  if (vernum == coda_supported_firmwares[i])
   return 1;
 return 0;
}
