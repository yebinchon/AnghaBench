
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int ADDR_TO_FLASH_U2 (int) ;
 int DATA_TO_FLASH (int ) ;
 scalar_t__ FLASH_DEVICE_16mbit_BOTTOM ;
 scalar_t__ FLASH_DEVICE_16mbit_TOP ;
 scalar_t__ FLASH_MANUFACTURER ;
 scalar_t__ FLASH_TO_DATA (int ) ;
 int READ_ARRAY ;
 int READ_ID_CODES ;
 int read32 (int ) ;
 int write32 (int ,int) ;

__attribute__((used)) static int flash_probe (void)
{
   __u32 manufacturer,devtype;


   write32 (DATA_TO_FLASH (READ_ID_CODES),0x00000000);



   manufacturer = FLASH_TO_DATA (read32 (ADDR_TO_FLASH_U2 (0x00000000)));
   devtype = FLASH_TO_DATA (read32 (ADDR_TO_FLASH_U2 (0x00000001)));


   write32 (DATA_TO_FLASH (READ_ARRAY),0x00000000);

   return (manufacturer == FLASH_MANUFACTURER && (devtype == FLASH_DEVICE_16mbit_TOP || devtype == FLASH_DEVICE_16mbit_BOTTOM));
}
