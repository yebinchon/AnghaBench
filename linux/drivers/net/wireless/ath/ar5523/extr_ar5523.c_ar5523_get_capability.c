
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523 {int dummy; } ;
typedef int cap_be ;
typedef int __be32 ;


 int AR5523_CMD_FLAG_MAGIC ;
 int WDCMSG_TARGET_GET_CAPABILITY ;
 int ar5523_cmd_read (struct ar5523*,int ,int *,int,int *,int,int ) ;
 int ar5523_err (struct ar5523*,char*,int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static int ar5523_get_capability(struct ar5523 *ar, u32 cap, u32 *val)
{
 int error;
 __be32 cap_be, val_be;

 cap_be = cpu_to_be32(cap);
 error = ar5523_cmd_read(ar, WDCMSG_TARGET_GET_CAPABILITY, &cap_be,
    sizeof(cap_be), &val_be, sizeof(__be32),
    AR5523_CMD_FLAG_MAGIC);
 if (error != 0) {
  ar5523_err(ar, "could not read capability %u\n", cap);
  return error;
 }
 *val = be32_to_cpu(val_be);
 return error;
}
