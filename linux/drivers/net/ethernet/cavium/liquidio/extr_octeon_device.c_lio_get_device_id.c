
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct octeon_device {int octeon_id; } ;


 size_t MAX_OCTEON_DEVICES ;
 struct octeon_device** octeon_device ;

int lio_get_device_id(void *dev)
{
 struct octeon_device *octeon_dev = (struct octeon_device *)dev;
 u32 i;

 for (i = 0; i < MAX_OCTEON_DEVICES; i++)
  if (octeon_device[i] == octeon_dev)
   return octeon_dev->octeon_id;
 return -1;
}
