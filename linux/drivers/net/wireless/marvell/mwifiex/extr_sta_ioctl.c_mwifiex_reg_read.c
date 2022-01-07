
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_reg_rw {void* value; void* offset; void* type; } ;


 int HostCmd_ACT_GEN_GET ;
 int mwifiex_reg_mem_ioctl_reg_rw (struct mwifiex_private*,struct mwifiex_ds_reg_rw*,int ) ;

int
mwifiex_reg_read(struct mwifiex_private *priv, u32 reg_type,
   u32 reg_offset, u32 *value)
{
 int ret;
 struct mwifiex_ds_reg_rw reg_rw;

 reg_rw.type = reg_type;
 reg_rw.offset = reg_offset;
 ret = mwifiex_reg_mem_ioctl_reg_rw(priv, &reg_rw, HostCmd_ACT_GEN_GET);

 if (ret)
  goto done;

 *value = reg_rw.value;

done:
 return ret;
}
