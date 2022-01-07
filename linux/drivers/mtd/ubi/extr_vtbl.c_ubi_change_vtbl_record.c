
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubi_vtbl_record {int crc; } ;
struct ubi_device {int vtbl_slots; int * vtbl; } ;


 int UBI_CRC32_INIT ;
 int UBI_VTBL_RECORD_SIZE_CRC ;
 int cpu_to_be32 (int ) ;
 int crc32 (int ,struct ubi_vtbl_record*,int ) ;
 struct ubi_vtbl_record empty_vtbl_record ;
 int memcpy (int *,struct ubi_vtbl_record*,int) ;
 int self_vtbl_check (struct ubi_device*) ;
 int ubi_assert (int) ;
 int ubi_update_layout_vol (struct ubi_device*) ;

int ubi_change_vtbl_record(struct ubi_device *ubi, int idx,
      struct ubi_vtbl_record *vtbl_rec)
{
 int err;
 uint32_t crc;

 ubi_assert(idx >= 0 && idx < ubi->vtbl_slots);

 if (!vtbl_rec)
  vtbl_rec = &empty_vtbl_record;
 else {
  crc = crc32(UBI_CRC32_INIT, vtbl_rec, UBI_VTBL_RECORD_SIZE_CRC);
  vtbl_rec->crc = cpu_to_be32(crc);
 }

 memcpy(&ubi->vtbl[idx], vtbl_rec, sizeof(struct ubi_vtbl_record));
 err = ubi_update_layout_vol(ubi);

 self_vtbl_check(ubi);
 return err ? err : 0;
}
