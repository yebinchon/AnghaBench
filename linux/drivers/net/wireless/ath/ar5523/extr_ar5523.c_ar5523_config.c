
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523_write_mac {scalar_t__ data; void* len; void* reg; } ;
struct ar5523 {int dummy; } ;
typedef void* __be32 ;


 int WDCMSG_TARGET_SET_CONFIG ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_write_mac*,int,int ) ;
 int ar5523_err (struct ar5523*,char*,int ) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static int ar5523_config(struct ar5523 *ar, u32 reg, u32 val)
{
 struct ar5523_write_mac write;
 int error;

 write.reg = cpu_to_be32(reg);
 write.len = cpu_to_be32(0);
 *(__be32 *)write.data = cpu_to_be32(val);

 error = ar5523_cmd_write(ar, WDCMSG_TARGET_SET_CONFIG, &write,
     3 * sizeof(u32), 0);
 if (error != 0)
  ar5523_err(ar, "could not write register 0x%02x\n", reg);
 return error;
}
