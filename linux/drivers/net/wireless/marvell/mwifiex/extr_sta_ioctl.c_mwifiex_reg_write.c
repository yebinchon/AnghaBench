
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_reg_rw {void* value; void* offset; void* type; } ;


 int HostCmd_ACT_GEN_SET ;
 int mwifiex_reg_mem_ioctl_reg_rw (struct mwifiex_private*,struct mwifiex_ds_reg_rw*,int ) ;

int
mwifiex_reg_write(struct mwifiex_private *priv, u32 reg_type,
    u32 reg_offset, u32 reg_value)
{
 struct mwifiex_ds_reg_rw reg_rw;

 reg_rw.type = reg_type;
 reg_rw.offset = reg_offset;
 reg_rw.value = reg_value;

 return mwifiex_reg_mem_ioctl_reg_rw(priv, &reg_rw, HostCmd_ACT_GEN_SET);
}
