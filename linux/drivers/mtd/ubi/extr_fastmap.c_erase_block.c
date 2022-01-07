
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ec_hdr {int ec; } ;
struct ubi_device {int ec_hdr_alsize; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UBI_IO_BITFLIPS ;
 long long UBI_MAX_ERASECOUNTER ;
 long long be64_to_cpu (int ) ;
 int cpu_to_be64 (long long) ;
 int kfree (struct ubi_ec_hdr*) ;
 struct ubi_ec_hdr* kzalloc (int ,int ) ;
 int ubi_io_read_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*,int ) ;
 int ubi_io_sync_erase (struct ubi_device*,int,int ) ;
 int ubi_io_write_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*) ;

__attribute__((used)) static int erase_block(struct ubi_device *ubi, int pnum)
{
 int ret;
 struct ubi_ec_hdr *ec_hdr;
 long long ec;

 ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
 if (!ec_hdr)
  return -ENOMEM;

 ret = ubi_io_read_ec_hdr(ubi, pnum, ec_hdr, 0);
 if (ret < 0)
  goto out;
 else if (ret && ret != UBI_IO_BITFLIPS) {
  ret = -EINVAL;
  goto out;
 }

 ret = ubi_io_sync_erase(ubi, pnum, 0);
 if (ret < 0)
  goto out;

 ec = be64_to_cpu(ec_hdr->ec);
 ec += ret;
 if (ec > UBI_MAX_ERASECOUNTER) {
  ret = -EINVAL;
  goto out;
 }

 ec_hdr->ec = cpu_to_be64(ec);
 ret = ubi_io_write_ec_hdr(ubi, pnum, ec_hdr);
 if (ret < 0)
  goto out;

 ret = ec;
out:
 kfree(ec_hdr);
 return ret;
}
