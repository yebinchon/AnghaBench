
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar5523_write_mac {int data; void* len; void* reg; } ;
struct ar5523 {int dummy; } ;


 int WDCMSG_TARGET_SET_CONFIG ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_write_mac*,int,int ) ;
 int ar5523_err (struct ar5523*,char*,int,int) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,void const*,int) ;

__attribute__((used)) static int ar5523_config_multi(struct ar5523 *ar, u32 reg, const void *data,
          int len)
{
 struct ar5523_write_mac write;
 int error;

 write.reg = cpu_to_be32(reg);
 write.len = cpu_to_be32(len);
 memcpy(write.data, data, len);


 error = ar5523_cmd_write(ar, WDCMSG_TARGET_SET_CONFIG, &write,
     (len == 0) ? sizeof(u32) : 2 * sizeof(u32) + len, 0);
 if (error != 0)
  ar5523_err(ar, "could not write %d bytes to register 0x%02x\n",
      len, reg);
 return error;
}
