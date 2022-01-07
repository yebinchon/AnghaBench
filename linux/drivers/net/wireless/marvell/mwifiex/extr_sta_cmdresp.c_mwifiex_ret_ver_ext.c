
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int version_str; } ;
struct host_cmd_ds_version_ext {int version_str; int version_str_sel; } ;
struct TYPE_2__ {struct host_cmd_ds_version_ext verext; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static int mwifiex_ret_ver_ext(struct mwifiex_private *priv,
          struct host_cmd_ds_command *resp,
          struct host_cmd_ds_version_ext *version_ext)
{
 struct host_cmd_ds_version_ext *ver_ext = &resp->params.verext;

 if (version_ext) {
  version_ext->version_str_sel = ver_ext->version_str_sel;
  memcpy(version_ext->version_str, ver_ext->version_str,
         sizeof(char) * 128);
  memcpy(priv->version_str, ver_ext->version_str, 128);
 }
 return 0;
}
