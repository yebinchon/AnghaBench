
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_vid_hdr {int dummy; } ;
struct ubi_ec_hdr {int dummy; } ;
struct ubi_device {int peb_size; int mtd; scalar_t__ vid_hdr_aloffset; } ;
typedef int loff_t ;


 int EIO ;
 int UBI_IO_BAD_HDR ;
 int UBI_IO_BAD_HDR_EBADMSG ;
 int UBI_IO_FF ;
 int mtd_write (int ,int,int,size_t*,void*) ;
 int ubi_assert (int) ;
 int ubi_dump_flash (struct ubi_device*,int,int ,int) ;
 int ubi_err (struct ubi_device*,char*,int,int) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_init_vid_buf (struct ubi_device*,struct ubi_vid_io_buf*,struct ubi_vid_hdr*) ;
 int ubi_io_read_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*,int ) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_io_buf*,int ) ;

__attribute__((used)) static int nor_erase_prepare(struct ubi_device *ubi, int pnum)
{
 int err;
 size_t written;
 loff_t addr;
 uint32_t data = 0;
 struct ubi_ec_hdr ec_hdr;
 struct ubi_vid_io_buf vidb;
 struct ubi_vid_hdr vid_hdr;
 addr = (loff_t)pnum * ubi->peb_size;
 err = ubi_io_read_ec_hdr(ubi, pnum, &ec_hdr, 0);
 if (err != UBI_IO_BAD_HDR_EBADMSG && err != UBI_IO_BAD_HDR &&
     err != UBI_IO_FF){
  err = mtd_write(ubi->mtd, addr, 4, &written, (void *)&data);
  if(err)
   goto error;
 }

 ubi_init_vid_buf(ubi, &vidb, &vid_hdr);
 ubi_assert(&vid_hdr == ubi_get_vid_hdr(&vidb));

 err = ubi_io_read_vid_hdr(ubi, pnum, &vidb, 0);
 if (err != UBI_IO_BAD_HDR_EBADMSG && err != UBI_IO_BAD_HDR &&
     err != UBI_IO_FF){
  addr += ubi->vid_hdr_aloffset;
  err = mtd_write(ubi->mtd, addr, 4, &written, (void *)&data);
  if (err)
   goto error;
 }
 return 0;

error:





 ubi_err(ubi, "cannot invalidate PEB %d, write returned %d", pnum, err);
 ubi_dump_flash(ubi, pnum, 0, ubi->peb_size);
 return -EIO;
}
