
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ec_hdr {int ec; } ;
struct ubi_device {int ec_hdr_alsize; } ;
struct ubi_attach_info {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 long long UBI_MAX_ERASECOUNTER ;
 int cpu_to_be64 (int) ;
 int kfree (struct ubi_ec_hdr*) ;
 struct ubi_ec_hdr* kzalloc (int ,int ) ;
 int ubi_err (struct ubi_device*,char*,int,int) ;
 int ubi_io_sync_erase (struct ubi_device*,int,int ) ;
 int ubi_io_write_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*) ;

__attribute__((used)) static int early_erase_peb(struct ubi_device *ubi,
      const struct ubi_attach_info *ai, int pnum, int ec)
{
 int err;
 struct ubi_ec_hdr *ec_hdr;

 if ((long long)ec >= UBI_MAX_ERASECOUNTER) {




  ubi_err(ubi, "erase counter overflow at PEB %d, EC %d",
   pnum, ec);
  return -EINVAL;
 }

 ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
 if (!ec_hdr)
  return -ENOMEM;

 ec_hdr->ec = cpu_to_be64(ec);

 err = ubi_io_sync_erase(ubi, pnum, 0);
 if (err < 0)
  goto out_free;

 err = ubi_io_write_ec_hdr(ubi, pnum, ec_hdr);

out_free:
 kfree(ec_hdr);
 return err;
}
