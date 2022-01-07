
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubi_vid_io_buf {void* buffer; } ;
struct ubi_vid_hdr {void* hdr_crc; int version; void* magic; } ;
struct ubi_device {int peb_count; int vid_hdr_alsize; int vid_hdr_aloffset; } ;


 int EROFS ;
 int POWER_CUT_VID_WRITE ;
 int UBI_CRC32_INIT ;
 int UBI_VERSION ;
 int UBI_VID_HDR_MAGIC ;
 int UBI_VID_HDR_SIZE_CRC ;
 void* cpu_to_be32 (int ) ;
 int crc32 (int ,struct ubi_vid_hdr*,int ) ;
 int dbg_io (char*,int) ;
 int self_check_peb_ec_hdr (struct ubi_device*,int) ;
 int self_check_vid_hdr (struct ubi_device*,int,struct ubi_vid_hdr*) ;
 int ubi_assert (int) ;
 scalar_t__ ubi_dbg_power_cut (struct ubi_device*,int ) ;
 struct ubi_vid_hdr* ubi_get_vid_hdr (struct ubi_vid_io_buf*) ;
 int ubi_io_write (struct ubi_device*,void*,int,int ,int ) ;

int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
    struct ubi_vid_io_buf *vidb)
{
 struct ubi_vid_hdr *vid_hdr = ubi_get_vid_hdr(vidb);
 int err;
 uint32_t crc;
 void *p = vidb->buffer;

 dbg_io("write VID header to PEB %d", pnum);
 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);

 err = self_check_peb_ec_hdr(ubi, pnum);
 if (err)
  return err;

 vid_hdr->magic = cpu_to_be32(UBI_VID_HDR_MAGIC);
 vid_hdr->version = UBI_VERSION;
 crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
 vid_hdr->hdr_crc = cpu_to_be32(crc);

 err = self_check_vid_hdr(ubi, pnum, vid_hdr);
 if (err)
  return err;

 if (ubi_dbg_power_cut(ubi, POWER_CUT_VID_WRITE))
  return -EROFS;

 err = ubi_io_write(ubi, p, pnum, ubi->vid_hdr_aloffset,
      ubi->vid_hdr_alsize);
 return err;
}
