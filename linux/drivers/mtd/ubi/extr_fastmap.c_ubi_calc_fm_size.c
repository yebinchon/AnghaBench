
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_fm_volhdr {int dummy; } ;
struct ubi_fm_scan_pool {int dummy; } ;
struct ubi_fm_sb {int dummy; } ;
struct ubi_fm_hdr {int dummy; } ;
struct ubi_fm_ec {int dummy; } ;
struct ubi_fm_eba {int dummy; } ;
struct ubi_device {int peb_count; int leb_size; } ;
typedef int __be32 ;


 int UBI_MAX_VOLUMES ;
 size_t roundup (size_t,int ) ;

size_t ubi_calc_fm_size(struct ubi_device *ubi)
{
 size_t size;

 size = sizeof(struct ubi_fm_sb) +
  sizeof(struct ubi_fm_hdr) +
  sizeof(struct ubi_fm_scan_pool) +
  sizeof(struct ubi_fm_scan_pool) +
  (ubi->peb_count * sizeof(struct ubi_fm_ec)) +
  (sizeof(struct ubi_fm_eba) +
  (ubi->peb_count * sizeof(__be32))) +
  sizeof(struct ubi_fm_volhdr) * UBI_MAX_VOLUMES;
 return roundup(size, ubi->leb_size);
}
