
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int compat; int lnum; int vol_id; } ;
struct ubi_ec_hdr {scalar_t__ version; int image_seq; int ec; } ;
struct ubi_device {int image_seq; int ro_mode; } ;
struct ubi_attach_info {int bad_peb_count; int empty_peb_count; int maybe_bad_peb_count; int force_full_scan; long long ec_sum; int ec_count; long long max_ec; long long min_ec; int alien; int erase; int free; struct ubi_vid_io_buf* vidb; struct ubi_ec_hdr* ech; } ;


 int EINVAL ;
 long long UBI_MAX_ERASECOUNTER ;
 int UBI_MAX_VOLUMES ;
 int UBI_UNKNOWN ;
 scalar_t__ UBI_VERSION ;
 int add_corrupted (struct ubi_attach_info*,int,long long) ;
 int add_fastmap (struct ubi_attach_info*,int,struct ubi_vid_hdr*,long long) ;
 int add_to_list (struct ubi_attach_info*,int,int,int,long long,int,int *) ;
 int be32_to_cpu (int ) ;
 long long be64_to_cpu (int ) ;
 int check_corruption (struct ubi_device*,struct ubi_vid_hdr*,int) ;
 int dbg_bld (char*,int) ;
 int ubi_add_to_av (struct ubi_device*,struct ubi_attach_info*,int,long long,struct ubi_vid_hdr*,int) ;
 int ubi_dump_ec_hdr (struct ubi_ec_hdr*) ;
 int ubi_err (struct ubi_device*,char*,int,...) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_is_bad (struct ubi_device*,int) ;
 int ubi_io_read_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*,int ) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*,int ) ;
 scalar_t__ ubi_is_fm_vol (int) ;
 int ubi_msg (struct ubi_device*,char*,int,int) ;
 int ubi_warn (struct ubi_device*,char*,int) ;
 int vol_ignored (int) ;

__attribute__((used)) static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
      int pnum, bool fast)
{
 struct ubi_ec_hdr *ech = ai->ech;
 struct ubi_vid_io_buf *vidb = ai->vidb;
 struct ubi_vid_hdr *vidh = ubi_get_vid_hdr(vidb);
 long long ec;
 int err, bitflips = 0, vol_id = -1, ec_err = 0;

 dbg_bld("scan PEB %d", pnum);


 err = ubi_io_is_bad(ubi, pnum);
 if (err < 0)
  return err;
 else if (err) {
  ai->bad_peb_count += 1;
  return 0;
 }

 err = ubi_io_read_ec_hdr(ubi, pnum, ech, 0);
 if (err < 0)
  return err;
 switch (err) {
 case 0:
  break;
 case 130:
  bitflips = 1;
  break;
 case 129:
  ai->empty_peb_count += 1;
  return add_to_list(ai, pnum, UBI_UNKNOWN, UBI_UNKNOWN,
       UBI_UNKNOWN, 0, &ai->erase);
 case 128:
  ai->empty_peb_count += 1;
  return add_to_list(ai, pnum, UBI_UNKNOWN, UBI_UNKNOWN,
       UBI_UNKNOWN, 1, &ai->erase);
 case 131:
 case 132:





  ec_err = err;
  ec = UBI_UNKNOWN;
  bitflips = 1;
  break;
 default:
  ubi_err(ubi, "'ubi_io_read_ec_hdr()' returned unknown code %d",
   err);
  return -EINVAL;
 }

 if (!ec_err) {
  int image_seq;


  if (ech->version != UBI_VERSION) {
   ubi_err(ubi, "this UBI version is %d, image version is %d",
    UBI_VERSION, (int)ech->version);
   return -EINVAL;
  }

  ec = be64_to_cpu(ech->ec);
  if (ec > UBI_MAX_ERASECOUNTER) {







   ubi_err(ubi, "erase counter overflow, max is %d",
    UBI_MAX_ERASECOUNTER);
   ubi_dump_ec_hdr(ech);
   return -EINVAL;
  }
  image_seq = be32_to_cpu(ech->image_seq);
  if (!ubi->image_seq)
   ubi->image_seq = image_seq;
  if (image_seq && ubi->image_seq != image_seq) {
   ubi_err(ubi, "bad image sequence number %d in PEB %d, expected %d",
    image_seq, pnum, ubi->image_seq);
   ubi_dump_ec_hdr(ech);
   return -EINVAL;
  }
 }



 err = ubi_io_read_vid_hdr(ubi, pnum, vidb, 0);
 if (err < 0)
  return err;
 switch (err) {
 case 0:
  break;
 case 130:
  bitflips = 1;
  break;
 case 131:
  if (ec_err == 131)






   ai->maybe_bad_peb_count += 1;

 case 132:
   if (fast)
    ai->force_full_scan = 1;

  if (ec_err)
   err = 0;
  else




   err = check_corruption(ubi, vidh, pnum);

  if (err < 0)
   return err;
  else if (!err)

   err = add_to_list(ai, pnum, UBI_UNKNOWN,
       UBI_UNKNOWN, ec, 1, &ai->erase);
  else

   err = add_corrupted(ai, pnum, ec);
  if (err)
   return err;
  goto adjust_mean_ec;
 case 128:
  err = add_to_list(ai, pnum, UBI_UNKNOWN, UBI_UNKNOWN,
      ec, 1, &ai->erase);
  if (err)
   return err;
  goto adjust_mean_ec;
 case 129:
  if (ec_err || bitflips)
   err = add_to_list(ai, pnum, UBI_UNKNOWN,
       UBI_UNKNOWN, ec, 1, &ai->erase);
  else
   err = add_to_list(ai, pnum, UBI_UNKNOWN,
       UBI_UNKNOWN, ec, 0, &ai->free);
  if (err)
   return err;
  goto adjust_mean_ec;
 default:
  ubi_err(ubi, "'ubi_io_read_vid_hdr()' returned unknown code %d",
   err);
  return -EINVAL;
 }

 vol_id = be32_to_cpu(vidh->vol_id);
 if (vol_id > UBI_MAX_VOLUMES && !vol_ignored(vol_id)) {
  int lnum = be32_to_cpu(vidh->lnum);


  switch (vidh->compat) {
  case 136:
   ubi_msg(ubi, "\"delete\" compatible internal volume %d:%d found, will remove it",
    vol_id, lnum);

   err = add_to_list(ai, pnum, vol_id, lnum,
       ec, 1, &ai->erase);
   if (err)
    return err;
   return 0;

  case 133:
   ubi_msg(ubi, "read-only compatible internal volume %d:%d found, switch to read-only mode",
    vol_id, lnum);
   ubi->ro_mode = 1;
   break;

  case 135:
   ubi_msg(ubi, "\"preserve\" compatible internal volume %d:%d found",
    vol_id, lnum);
   err = add_to_list(ai, pnum, vol_id, lnum,
       ec, 0, &ai->alien);
   if (err)
    return err;
   return 0;

  case 134:
   ubi_err(ubi, "incompatible internal volume %d:%d found",
    vol_id, lnum);
   return -EINVAL;
  }
 }

 if (ec_err)
  ubi_warn(ubi, "valid VID header but corrupted EC header at PEB %d",
    pnum);

 if (ubi_is_fm_vol(vol_id))
  err = add_fastmap(ai, pnum, vidh, ec);
 else
  err = ubi_add_to_av(ubi, ai, pnum, ec, vidh, bitflips);

 if (err)
  return err;

adjust_mean_ec:
 if (!ec_err) {
  ai->ec_sum += ec;
  ai->ec_count += 1;
  if (ec > ai->max_ec)
   ai->max_ec = ec;
  if (ec < ai->min_ec)
   ai->min_ec = ec;
 }

 return 0;
}
