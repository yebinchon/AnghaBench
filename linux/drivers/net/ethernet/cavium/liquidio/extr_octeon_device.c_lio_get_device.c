
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct octeon_device {int dummy; } ;


 size_t MAX_OCTEON_DEVICES ;
 struct octeon_device** octeon_device ;

struct octeon_device *lio_get_device(u32 octeon_id)
{
 if (octeon_id >= MAX_OCTEON_DEVICES)
  return ((void*)0);
 else
  return octeon_device[octeon_id];
}
