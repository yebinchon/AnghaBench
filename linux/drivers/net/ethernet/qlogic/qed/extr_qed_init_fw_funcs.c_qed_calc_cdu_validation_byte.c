
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int data_to_crc ;


 int const CDU_CONTEXT_VALIDATION_CFG_USE_ACTIVE ;
 int const CDU_CONTEXT_VALIDATION_CFG_USE_CID ;
 int const CDU_CONTEXT_VALIDATION_CFG_USE_REGION ;
 int const CDU_CONTEXT_VALIDATION_CFG_USE_TYPE ;
 int const CDU_CONTEXT_VALIDATION_CFG_VALIDATION_TYPE_SHIFT ;
 int CDU_VALIDATION_DEFAULT_CFG ;
 int CRC8_INIT_VALUE ;
 int be32_to_cpu (int) ;
 int cdu_crc8_table ;
 int crc8 (int ,int*,int,int ) ;
 int crc8_populate_msb (int ,int) ;

__attribute__((used)) static u8 qed_calc_cdu_validation_byte(u8 conn_type, u8 region, u32 cid)
{
 const u8 validation_cfg = CDU_VALIDATION_DEFAULT_CFG;
 u8 crc, validation_byte = 0;
 static u8 crc8_table_valid;
 u32 validation_string = 0;
 u32 data_to_crc;

 if (!crc8_table_valid) {
  crc8_populate_msb(cdu_crc8_table, 0x07);
  crc8_table_valid = 1;
 }






 if ((validation_cfg >> CDU_CONTEXT_VALIDATION_CFG_USE_CID) & 1)
  validation_string |= (cid & 0xFFF00000) | ((cid & 0xFFF) << 8);

 if ((validation_cfg >> CDU_CONTEXT_VALIDATION_CFG_USE_REGION) & 1)
  validation_string |= ((region & 0xF) << 4);

 if ((validation_cfg >> CDU_CONTEXT_VALIDATION_CFG_USE_TYPE) & 1)
  validation_string |= (conn_type & 0xF);


 data_to_crc = be32_to_cpu(validation_string);

 crc = crc8(cdu_crc8_table,
     (u8 *)&data_to_crc, sizeof(data_to_crc), CRC8_INIT_VALUE);
 validation_byte |=
     ((validation_cfg >>
       CDU_CONTEXT_VALIDATION_CFG_USE_ACTIVE) & 1) << 7;

 if ((validation_cfg >>
      CDU_CONTEXT_VALIDATION_CFG_VALIDATION_TYPE_SHIFT) & 1)
  validation_byte |= ((conn_type & 0xF) << 3) | (crc & 0x7);
 else
  validation_byte |= crc & 0x7F;

 return validation_byte;
}
