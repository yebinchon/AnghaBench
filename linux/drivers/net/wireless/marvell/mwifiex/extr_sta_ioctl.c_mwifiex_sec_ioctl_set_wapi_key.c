
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_encrypt_key {int dummy; } ;


 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_KEY_MATERIAL ;
 int KEY_INFO_ENABLED ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_encrypt_key*,int) ;

__attribute__((used)) static int mwifiex_sec_ioctl_set_wapi_key(struct mwifiex_private *priv,
          struct mwifiex_ds_encrypt_key *encrypt_key)
{

 return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_KEY_MATERIAL,
    HostCmd_ACT_GEN_SET, KEY_INFO_ENABLED,
    encrypt_key, 1);
}
