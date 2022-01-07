
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2 {int dummy; } ;


 int BNX2_NVM_COMMAND_FIRST ;
 int BNX2_NVM_COMMAND_LAST ;
 int bnx2_acquire_nvram_lock (struct bnx2*) ;
 int bnx2_disable_nvram_access (struct bnx2*) ;
 int bnx2_enable_nvram_access (struct bnx2*) ;
 int bnx2_nvram_read_dword (struct bnx2*,int,int *,int) ;
 int bnx2_release_nvram_lock (struct bnx2*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
bnx2_nvram_read(struct bnx2 *bp, u32 offset, u8 *ret_buf,
  int buf_size)
{
 int rc = 0;
 u32 cmd_flags, offset32, len32, extra;

 if (buf_size == 0)
  return 0;


 if ((rc = bnx2_acquire_nvram_lock(bp)) != 0)
  return rc;


 bnx2_enable_nvram_access(bp);

 len32 = buf_size;
 offset32 = offset;
 extra = 0;

 cmd_flags = 0;

 if (offset32 & 3) {
  u8 buf[4];
  u32 pre_len;

  offset32 &= ~3;
  pre_len = 4 - (offset & 3);

  if (pre_len >= len32) {
   pre_len = len32;
   cmd_flags = BNX2_NVM_COMMAND_FIRST |
        BNX2_NVM_COMMAND_LAST;
  }
  else {
   cmd_flags = BNX2_NVM_COMMAND_FIRST;
  }

  rc = bnx2_nvram_read_dword(bp, offset32, buf, cmd_flags);

  if (rc)
   return rc;

  memcpy(ret_buf, buf + (offset & 3), pre_len);

  offset32 += 4;
  ret_buf += pre_len;
  len32 -= pre_len;
 }
 if (len32 & 3) {
  extra = 4 - (len32 & 3);
  len32 = (len32 + 4) & ~3;
 }

 if (len32 == 4) {
  u8 buf[4];

  if (cmd_flags)
   cmd_flags = BNX2_NVM_COMMAND_LAST;
  else
   cmd_flags = BNX2_NVM_COMMAND_FIRST |
        BNX2_NVM_COMMAND_LAST;

  rc = bnx2_nvram_read_dword(bp, offset32, buf, cmd_flags);

  memcpy(ret_buf, buf, 4 - extra);
 }
 else if (len32 > 0) {
  u8 buf[4];


  if (cmd_flags)
   cmd_flags = 0;
  else
   cmd_flags = BNX2_NVM_COMMAND_FIRST;

  rc = bnx2_nvram_read_dword(bp, offset32, ret_buf, cmd_flags);


  offset32 += 4;
  ret_buf += 4;
  len32 -= 4;

  while (len32 > 4 && rc == 0) {
   rc = bnx2_nvram_read_dword(bp, offset32, ret_buf, 0);


   offset32 += 4;
   ret_buf += 4;
   len32 -= 4;
  }

  if (rc)
   return rc;

  cmd_flags = BNX2_NVM_COMMAND_LAST;
  rc = bnx2_nvram_read_dword(bp, offset32, buf, cmd_flags);

  memcpy(ret_buf, buf, 4 - extra);
 }


 bnx2_disable_nvram_access(bp);

 bnx2_release_nvram_lock(bp);

 return rc;
}
