
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct code_entry {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int CODE_ENTRY_EXTENDED_DIR_IDX ;
 int DP (int,char*) ;
 int NVRAM_DIR_OFFSET ;
 int bnx2x_test_dir_entry (struct bnx2x*,int,int *) ;
 int bnx2x_test_nvram_ext_dirs (struct bnx2x*,int *) ;

__attribute__((used)) static int bnx2x_test_nvram_dirs(struct bnx2x *bp, u8 *buff)
{
 u32 rc, dir_offset = NVRAM_DIR_OFFSET;
 int i;

 DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM, "NVRAM DIRS CRC test-set\n");

 for (i = 0; i < CODE_ENTRY_EXTENDED_DIR_IDX; i++) {
  rc = bnx2x_test_dir_entry(bp, dir_offset +
           sizeof(struct code_entry) * i,
       buff);
  if (rc)
   return rc;
 }

 return bnx2x_test_nvram_ext_dirs(bp, buff);
}
