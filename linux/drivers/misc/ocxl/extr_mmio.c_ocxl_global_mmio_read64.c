
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int global_mmio_size; } ;
struct ocxl_afu {scalar_t__ global_mmio_ptr; TYPE_1__ config; } ;
typedef enum ocxl_endian { ____Placeholder_ocxl_endian } ocxl_endian ;


 int EINVAL ;

 int OCXL_HOST_ENDIAN ;
 int readq (char*) ;
 int readq_be (char*) ;

int ocxl_global_mmio_read64(struct ocxl_afu *afu, size_t offset,
    enum ocxl_endian endian, u64 *val)
{
 if (offset > afu->config.global_mmio_size - 8)
  return -EINVAL;






 switch (endian) {
 case 128:
  *val = readq_be((char *)afu->global_mmio_ptr + offset);
  break;

 default:
  *val = readq((char *)afu->global_mmio_ptr + offset);
  break;
 }

 return 0;
}
