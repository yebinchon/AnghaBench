
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct code_entry {size_t code_attribute; int nvm_start_addr; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 size_t CODE_IMAGE_LENGTH_MASK ;
 scalar_t__ CODE_IMAGE_TYPE_MASK ;
 scalar_t__ CODE_IMAGE_VNTAG_PROFILES_DATA ;
 int DP (int,char*,scalar_t__,int) ;
 int bnx2x_nvram_crc (struct bnx2x*,int ,size_t,int *) ;

__attribute__((used)) static int bnx2x_test_nvram_dir(struct bnx2x *bp,
    struct code_entry *entry,
    u8 *buff)
{
 size_t size = entry->code_attribute & CODE_IMAGE_LENGTH_MASK;
 u32 type = entry->code_attribute & CODE_IMAGE_TYPE_MASK;
 int rc;


 if (size == 0 || type == CODE_IMAGE_VNTAG_PROFILES_DATA)
  return 0;

 rc = bnx2x_nvram_crc(bp, entry->nvm_start_addr, size, buff);
 if (rc)
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "image %x has failed crc test (rc %d)\n", type, rc);

 return rc;
}
