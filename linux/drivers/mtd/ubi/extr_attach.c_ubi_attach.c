
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_device {int fm_disabled; int vtbl; scalar_t__ fm; int mean_ec; int max_ec; int corr_peb_count; scalar_t__ bad_peb_count; scalar_t__ peb_count; scalar_t__ good_peb_count; TYPE_1__* mtd; } ;
struct ubi_attach_info {int max_sqnum; int mean_ec; int max_ec; int corr_peb_count; scalar_t__ bad_peb_count; } ;
struct TYPE_2__ {int size; } ;


 int ENOMEM ;
 int UBI_FM_MAX_START ;
 int UBI_NO_FASTMAP ;
 struct ubi_attach_info* alloc_ai () ;
 int dbg_gen (char*,int ) ;
 int destroy_ai (struct ubi_attach_info*) ;
 scalar_t__ mtd_div_by_eb (int ,TYPE_1__*) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int scan_all (struct ubi_device*,struct ubi_attach_info*,int) ;
 int scan_fast (struct ubi_device*,struct ubi_attach_info**) ;
 int self_check_eba (struct ubi_device*,struct ubi_attach_info*,struct ubi_attach_info*) ;
 scalar_t__ ubi_dbg_chk_fastmap (struct ubi_device*) ;
 int ubi_eba_init (struct ubi_device*,struct ubi_attach_info*) ;
 int ubi_free_internal_volumes (struct ubi_device*) ;
 int ubi_read_volume_table (struct ubi_device*,struct ubi_attach_info*) ;
 int ubi_wl_close (struct ubi_device*) ;
 int ubi_wl_init (struct ubi_device*,struct ubi_attach_info*) ;
 int vfree (int ) ;

int ubi_attach(struct ubi_device *ubi, int force_scan)
{
 int err;
 struct ubi_attach_info *ai;

 ai = alloc_ai();
 if (!ai)
  return -ENOMEM;
 err = scan_all(ubi, ai, 0);

 if (err)
  goto out_ai;

 ubi->bad_peb_count = ai->bad_peb_count;
 ubi->good_peb_count = ubi->peb_count - ubi->bad_peb_count;
 ubi->corr_peb_count = ai->corr_peb_count;
 ubi->max_ec = ai->max_ec;
 ubi->mean_ec = ai->mean_ec;
 dbg_gen("max. sequence number:       %llu", ai->max_sqnum);

 err = ubi_read_volume_table(ubi, ai);
 if (err)
  goto out_ai;

 err = ubi_wl_init(ubi, ai);
 if (err)
  goto out_vtbl;

 err = ubi_eba_init(ubi, ai);
 if (err)
  goto out_wl;
 destroy_ai(ai);
 return 0;

out_wl:
 ubi_wl_close(ubi);
out_vtbl:
 ubi_free_internal_volumes(ubi);
 vfree(ubi->vtbl);
out_ai:
 destroy_ai(ai);
 return err;
}
