
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct TYPE_3__ {void* tx_aggr_align; void* tx_aggr_max_num; void* tx_aggr_max_size; int mode; void* enable; } ;
struct mwifiex_adapter {TYPE_1__ bus_aggr; int intf_hdr_len; } ;
struct host_cmd_ds_pkt_aggr_ctrl {int tx_aggr_align; int tx_aggr_max_num; int tx_aggr_max_size; int enable; } ;
struct TYPE_4__ {struct host_cmd_ds_pkt_aggr_ctrl pkt_aggr_ctrl; } ;
struct host_cmd_ds_command {TYPE_2__ params; } ;


 int INTF_HEADER_LEN ;
 int MWIFIEX_BUS_AGGR_MODE_LEN_V2 ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static int mwifiex_ret_pkt_aggr_ctrl(struct mwifiex_private *priv,
         struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_pkt_aggr_ctrl *pkt_aggr_ctrl =
     &resp->params.pkt_aggr_ctrl;
 struct mwifiex_adapter *adapter = priv->adapter;

 adapter->bus_aggr.enable = le16_to_cpu(pkt_aggr_ctrl->enable);
 if (adapter->bus_aggr.enable)
  adapter->intf_hdr_len = INTF_HEADER_LEN;
 adapter->bus_aggr.mode = MWIFIEX_BUS_AGGR_MODE_LEN_V2;
 adapter->bus_aggr.tx_aggr_max_size =
    le16_to_cpu(pkt_aggr_ctrl->tx_aggr_max_size);
 adapter->bus_aggr.tx_aggr_max_num =
    le16_to_cpu(pkt_aggr_ctrl->tx_aggr_max_num);
 adapter->bus_aggr.tx_aggr_align =
    le16_to_cpu(pkt_aggr_ctrl->tx_aggr_align);

 return 0;
}
