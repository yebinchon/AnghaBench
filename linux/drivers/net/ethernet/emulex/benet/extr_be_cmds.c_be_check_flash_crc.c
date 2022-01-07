
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct be_adapter {int dummy; } ;


 int be_cmd_get_flash_crc (struct be_adapter*,int *,int ,int,int) ;
 int memcmp (int *,int const*,int) ;

__attribute__((used)) static int be_check_flash_crc(struct be_adapter *adapter, const u8 *p,
         u32 img_offset, u32 img_size, int hdr_size,
         u16 img_optype, bool *crc_match)
{
 u32 crc_offset;
 int status;
 u8 crc[4];

 status = be_cmd_get_flash_crc(adapter, crc, img_optype, img_offset,
          img_size - 4);
 if (status)
  return status;

 crc_offset = hdr_size + img_offset + img_size - 4;


 if (!memcmp(crc, p + crc_offset, 4))
  *crc_match = 1;
 else
  *crc_match = 0;

 return status;
}
