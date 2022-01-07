
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_ec_hdr {int ec; } ;
struct ubi_device {int ec_hdr_alsize; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int UBI_IO_BITFLIPS ;
 long long be64_to_cpu (int ) ;
 int dump_stack () ;
 int kfree (struct ubi_ec_hdr*) ;
 struct ubi_ec_hdr* kzalloc (int ,int ) ;
 int ubi_dbg_chk_gen (struct ubi_device*) ;
 int ubi_err (struct ubi_device*,char*,long long,...) ;
 int ubi_io_read_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*,int ) ;

__attribute__((used)) static int self_check_ec(struct ubi_device *ubi, int pnum, int ec)
{
 int err;
 long long read_ec;
 struct ubi_ec_hdr *ec_hdr;

 if (!ubi_dbg_chk_gen(ubi))
  return 0;

 ec_hdr = kzalloc(ubi->ec_hdr_alsize, GFP_NOFS);
 if (!ec_hdr)
  return -ENOMEM;

 err = ubi_io_read_ec_hdr(ubi, pnum, ec_hdr, 0);
 if (err && err != UBI_IO_BITFLIPS) {

  err = 0;
  goto out_free;
 }

 read_ec = be64_to_cpu(ec_hdr->ec);
 if (ec != read_ec && read_ec - ec > 1) {
  ubi_err(ubi, "self-check failed for PEB %d", pnum);
  ubi_err(ubi, "read EC is %lld, should be %d", read_ec, ec);
  dump_stack();
  err = 1;
 } else
  err = 0;

out_free:
 kfree(ec_hdr);
 return err;
}
