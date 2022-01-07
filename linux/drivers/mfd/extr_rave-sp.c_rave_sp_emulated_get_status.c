
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rave_sp_status {int bootloader_version; int firmware_version; } ;
struct rave_sp {int dummy; } ;
typedef int cmd ;


 int RAVE_SP_CMD_GET_BOOTLOADER_VERSION ;
 int RAVE_SP_CMD_GET_FIRMWARE_VERSION ;
 int rave_sp_exec (struct rave_sp*,int*,int,int *,int) ;

__attribute__((used)) static int rave_sp_emulated_get_status(struct rave_sp *sp,
           struct rave_sp_status *status)
{
 u8 cmd[] = {
  [0] = RAVE_SP_CMD_GET_FIRMWARE_VERSION,
  [1] = 0,
 };
 int ret;

 ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status->firmware_version,
      sizeof(status->firmware_version));
 if (ret)
  return ret;

 cmd[0] = RAVE_SP_CMD_GET_BOOTLOADER_VERSION;
 return rave_sp_exec(sp, cmd, sizeof(cmd), &status->bootloader_version,
       sizeof(status->bootloader_version));
}
