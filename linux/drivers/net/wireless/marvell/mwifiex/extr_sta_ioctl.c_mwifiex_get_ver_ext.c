
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver_ext ;
typedef int u32 ;
struct mwifiex_ver_ext {int version_str_sel; } ;
struct mwifiex_private {int dummy; } ;


 int HostCmd_ACT_GEN_GET ;
 int HostCmd_CMD_VERSION_EXT ;
 int memset (struct mwifiex_ver_ext*,int ,int) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ver_ext*,int) ;

int
mwifiex_get_ver_ext(struct mwifiex_private *priv, u32 version_str_sel)
{
 struct mwifiex_ver_ext ver_ext;

 memset(&ver_ext, 0, sizeof(ver_ext));
 ver_ext.version_str_sel = version_str_sel;
 if (mwifiex_send_cmd(priv, HostCmd_CMD_VERSION_EXT,
        HostCmd_ACT_GEN_GET, 0, &ver_ext, 1))
  return -1;

 return 0;
}
