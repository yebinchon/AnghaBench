
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {scalar_t__ beb_rsvd_level; scalar_t__ bad_peb_limit; scalar_t__ bad_peb_count; } ;


 int ubi_warn (struct ubi_device*,char*,scalar_t__,scalar_t__) ;

void ubi_calculate_reserved(struct ubi_device *ubi)
{




 ubi->beb_rsvd_level = ubi->bad_peb_limit - ubi->bad_peb_count;
 if (ubi->beb_rsvd_level < 0) {
  ubi->beb_rsvd_level = 0;
  ubi_warn(ubi, "number of bad PEBs (%d) is above the expected limit (%d), not reserving any PEBs for bad PEB handling, will use available PEBs (if any)",
    ubi->bad_peb_count, ubi->bad_peb_limit);
 }
}
