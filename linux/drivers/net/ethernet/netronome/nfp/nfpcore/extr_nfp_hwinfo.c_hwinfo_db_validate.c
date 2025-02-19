
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_hwinfo {scalar_t__ start; int size; } ;
struct nfp_cpp {int dummy; } ;


 int EINVAL ;
 scalar_t__ crc32_posix (struct nfp_hwinfo*,scalar_t__) ;
 scalar_t__ get_unaligned_le32 (scalar_t__) ;
 int hwinfo_db_walk (struct nfp_cpp*,struct nfp_hwinfo*,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 int nfp_err (struct nfp_cpp*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
hwinfo_db_validate(struct nfp_cpp *cpp, struct nfp_hwinfo *db, u32 len)
{
 u32 size, crc;

 size = le32_to_cpu(db->size);
 if (size > len) {
  nfp_err(cpp, "Unsupported hwinfo size %u > %u\n", size, len);
  return -EINVAL;
 }

 size -= sizeof(u32);
 crc = crc32_posix(db, size);
 if (crc != get_unaligned_le32(db->start + size)) {
  nfp_err(cpp, "Corrupt hwinfo table (CRC mismatch), calculated 0x%x, expected 0x%x\n",
   crc, get_unaligned_le32(db->start + size));

  return -EINVAL;
 }

 return hwinfo_db_walk(cpp, db, size);
}
