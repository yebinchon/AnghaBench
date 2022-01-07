
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ubi_volume_info {int used_bytes; } ;
typedef int sector_t ;


 int EFBIG ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int calc_disk_capacity(struct ubi_volume_info *vi, u64 *disk_capacity)
{
 u64 size = vi->used_bytes >> 9;

 if (vi->used_bytes % 512) {
  pr_warn("UBI: block: volume size is not a multiple of 512, "
   "last %llu bytes are ignored!\n",
   vi->used_bytes - (size << 9));
 }

 if ((sector_t)size != size)
  return -EFBIG;

 *disk_capacity = size;

 return 0;
}
