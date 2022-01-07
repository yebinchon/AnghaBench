
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_tdls_config {int enable; } ;
struct mwifiex_private {int dummy; } ;


 int ACT_TDLS_CS_ENABLE_CONFIG ;
 int HostCmd_CMD_TDLS_CONFIG ;
 int cpu_to_le16 (int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_tdls_config*,int) ;

__attribute__((used)) static int mwifiex_config_tdls(struct mwifiex_private *priv, u8 enable)
{
 struct mwifiex_tdls_config config;

 config.enable = cpu_to_le16(enable);
 return mwifiex_send_cmd(priv, HostCmd_CMD_TDLS_CONFIG,
    ACT_TDLS_CS_ENABLE_CONFIG, 0, &config, 1);
}
