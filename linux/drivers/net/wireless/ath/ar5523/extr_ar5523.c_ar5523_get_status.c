
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int which_be ;
typedef int u32 ;
struct ar5523 {int dummy; } ;
typedef int __be32 ;


 int AR5523_CMD_FLAG_MAGIC ;
 int WDCMSG_TARGET_GET_STATUS ;
 int ar5523_cmd_read (struct ar5523*,int ,int *,int,void*,int,int ) ;
 int ar5523_err (struct ar5523*,char*,int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static int ar5523_get_status(struct ar5523 *ar, u32 which, void *odata,
        int olen)
{
 int error;
 __be32 which_be;

 which_be = cpu_to_be32(which);
 error = ar5523_cmd_read(ar, WDCMSG_TARGET_GET_STATUS,
     &which_be, sizeof(which_be), odata, olen, AR5523_CMD_FLAG_MAGIC);
 if (error != 0)
  ar5523_err(ar, "could not read EEPROM offset 0x%02x\n", which);
 return error;
}
