
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ device_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 TYPE_1__* flash_devices ;

__attribute__((used)) static int get_flash_index(u32 flash_id)
{
 int index;


 for (index = 0; index < ARRAY_SIZE(flash_devices); index++) {
  if (flash_devices[index].device_id == flash_id)
   return index;
 }


 return -ENODEV;
}
