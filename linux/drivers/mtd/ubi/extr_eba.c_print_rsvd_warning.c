
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int beb_rsvd_level; int beb_rsvd_pebs; scalar_t__ corr_peb_count; } ;
struct ubi_attach_info {int max_sqnum; } ;


 int ubi_warn (struct ubi_device*,char*,int,...) ;

__attribute__((used)) static void print_rsvd_warning(struct ubi_device *ubi,
          struct ubi_attach_info *ai)
{




 if (ai->max_sqnum > (1 << 18)) {
  int min = ubi->beb_rsvd_level / 10;

  if (!min)
   min = 1;
  if (ubi->beb_rsvd_pebs > min)
   return;
 }

 ubi_warn(ubi, "cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d",
   ubi->beb_rsvd_pebs, ubi->beb_rsvd_level);
 if (ubi->corr_peb_count)
  ubi_warn(ubi, "%d PEBs are corrupted and not used",
    ubi->corr_peb_count);
}
