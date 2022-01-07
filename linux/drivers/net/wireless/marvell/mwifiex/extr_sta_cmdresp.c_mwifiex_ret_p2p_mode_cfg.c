
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_p2p_mode_cfg {int mode; } ;
struct TYPE_2__ {struct host_cmd_ds_p2p_mode_cfg mode_cfg; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int le16_to_cpu (int ) ;
 int put_unaligned_le16 (int ,void*) ;

__attribute__((used)) static int
mwifiex_ret_p2p_mode_cfg(struct mwifiex_private *priv,
    struct host_cmd_ds_command *resp,
    void *data_buf)
{
 struct host_cmd_ds_p2p_mode_cfg *mode_cfg = &resp->params.mode_cfg;

 if (data_buf)
  put_unaligned_le16(le16_to_cpu(mode_cfg->mode), data_buf);

 return 0;
}
