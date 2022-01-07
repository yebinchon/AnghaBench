
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubi_ec_hdr {void* hdr_crc; void* image_seq; void* data_offset; void* vid_hdr_offset; int version; void* magic; } ;
struct ubi_device {int peb_count; int ec_hdr_alsize; int image_seq; int leb_start; int vid_hdr_offset; } ;


 int EROFS ;
 int POWER_CUT_EC_WRITE ;
 int UBI_CRC32_INIT ;
 int UBI_EC_HDR_MAGIC ;
 int UBI_EC_HDR_SIZE_CRC ;
 int UBI_VERSION ;
 void* cpu_to_be32 (int ) ;
 int crc32 (int ,struct ubi_ec_hdr*,int ) ;
 int dbg_io (char*,int) ;
 int self_check_ec_hdr (struct ubi_device*,int,struct ubi_ec_hdr*) ;
 int ubi_assert (int) ;
 scalar_t__ ubi_dbg_power_cut (struct ubi_device*,int ) ;
 int ubi_io_write (struct ubi_device*,struct ubi_ec_hdr*,int,int ,int ) ;

int ubi_io_write_ec_hdr(struct ubi_device *ubi, int pnum,
   struct ubi_ec_hdr *ec_hdr)
{
 int err;
 uint32_t crc;

 dbg_io("write EC header to PEB %d", pnum);
 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);

 ec_hdr->magic = cpu_to_be32(UBI_EC_HDR_MAGIC);
 ec_hdr->version = UBI_VERSION;
 ec_hdr->vid_hdr_offset = cpu_to_be32(ubi->vid_hdr_offset);
 ec_hdr->data_offset = cpu_to_be32(ubi->leb_start);
 ec_hdr->image_seq = cpu_to_be32(ubi->image_seq);
 crc = crc32(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
 ec_hdr->hdr_crc = cpu_to_be32(crc);

 err = self_check_ec_hdr(ubi, pnum, ec_hdr);
 if (err)
  return err;

 if (ubi_dbg_power_cut(ubi, POWER_CUT_EC_WRITE))
  return -EROFS;

 err = ubi_io_write(ubi, ec_hdr, pnum, 0, ubi->ec_hdr_alsize);
 return err;
}
