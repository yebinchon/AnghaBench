
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ MCC_ADDL_STATUS_FLASH_IMAGE_CRC_MISMATCH ;
 scalar_t__ MCC_ADDL_STATUS_INSUFFICIENT_VLANS ;
 scalar_t__ MCC_ADDL_STATUS_TOO_MANY_INTERFACES ;
 scalar_t__ MCC_STATUS_ILLEGAL_FIELD ;
 scalar_t__ MCC_STATUS_ILLEGAL_REQUEST ;
 scalar_t__ MCC_STATUS_NOT_SUPPORTED ;
 scalar_t__ OPCODE_COMMON_WRITE_FLASHROM ;

__attribute__((used)) static bool be_skip_err_log(u8 opcode, u16 base_status, u16 addl_status)
{
 if (base_status == MCC_STATUS_NOT_SUPPORTED ||
     base_status == MCC_STATUS_ILLEGAL_REQUEST ||
     addl_status == MCC_ADDL_STATUS_TOO_MANY_INTERFACES ||
     addl_status == MCC_ADDL_STATUS_INSUFFICIENT_VLANS ||
     (opcode == OPCODE_COMMON_WRITE_FLASHROM &&
     (base_status == MCC_STATUS_ILLEGAL_FIELD ||
      addl_status == MCC_ADDL_STATUS_FLASH_IMAGE_CRC_MISMATCH)))
  return 1;
 else
  return 0;
}
