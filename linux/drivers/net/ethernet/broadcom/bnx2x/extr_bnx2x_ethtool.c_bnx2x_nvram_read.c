
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int flash_size; } ;
struct bnx2x {TYPE_1__ common; } ;
typedef int __be32 ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int DP (int,char*,int,int,...) ;
 int EINVAL ;
 int MCPR_NVM_COMMAND_FIRST ;
 int MCPR_NVM_COMMAND_LAST ;
 int bnx2x_acquire_nvram_lock (struct bnx2x*) ;
 int bnx2x_disable_nvram_access (struct bnx2x*) ;
 int bnx2x_enable_nvram_access (struct bnx2x*) ;
 int bnx2x_nvram_read_dword (struct bnx2x*,int,int *,int) ;
 int bnx2x_release_nvram_lock (struct bnx2x*) ;
 int memcpy (int *,int *,int) ;

int bnx2x_nvram_read(struct bnx2x *bp, u32 offset, u8 *ret_buf,
       int buf_size)
{
 int rc;
 u32 cmd_flags;
 __be32 val;

 if ((offset & 0x03) || (buf_size & 0x03) || (buf_size == 0)) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "Invalid parameter: offset 0x%x  buf_size 0x%x\n",
     offset, buf_size);
  return -EINVAL;
 }

 if (offset + buf_size > bp->common.flash_size) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "Invalid parameter: offset (0x%x) + buf_size (0x%x) > flash_size (0x%x)\n",
     offset, buf_size, bp->common.flash_size);
  return -EINVAL;
 }


 rc = bnx2x_acquire_nvram_lock(bp);
 if (rc)
  return rc;


 bnx2x_enable_nvram_access(bp);


 cmd_flags = MCPR_NVM_COMMAND_FIRST;
 while ((buf_size > sizeof(u32)) && (rc == 0)) {
  rc = bnx2x_nvram_read_dword(bp, offset, &val, cmd_flags);
  memcpy(ret_buf, &val, 4);


  offset += sizeof(u32);
  ret_buf += sizeof(u32);
  buf_size -= sizeof(u32);
  cmd_flags = 0;
 }

 if (rc == 0) {
  cmd_flags |= MCPR_NVM_COMMAND_LAST;
  rc = bnx2x_nvram_read_dword(bp, offset, &val, cmd_flags);
  memcpy(ret_buf, &val, 4);
 }


 bnx2x_disable_nvram_access(bp);
 bnx2x_release_nvram_lock(bp);

 return rc;
}
