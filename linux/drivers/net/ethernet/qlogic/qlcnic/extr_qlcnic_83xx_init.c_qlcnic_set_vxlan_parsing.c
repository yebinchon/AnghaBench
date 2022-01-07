
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int netdev; TYPE_2__* ahw; } ;
typedef int cmd ;
struct TYPE_4__ {int vxlan_port; } ;


 int QLCNIC_CMD_SET_INGRESS_ENCAP ;
 int QLCNIC_DISABLE_INGRESS_ENCAP_PARSING ;
 int QLCNIC_ENABLE_INGRESS_ENCAP_PARSING ;
 int memset (struct qlcnic_cmd_args*,int ,int) ;
 int netdev_err (int ,char*,char*,int ) ;
 int netdev_info (int ,char*,char*,int ) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_set_vxlan_parsing(struct qlcnic_adapter *adapter,
        bool state)
{
 u16 vxlan_port = adapter->ahw->vxlan_port;
 struct qlcnic_cmd_args cmd;
 int ret = 0;

 memset(&cmd, 0, sizeof(cmd));

 ret = qlcnic_alloc_mbx_args(&cmd, adapter,
        QLCNIC_CMD_SET_INGRESS_ENCAP);
 if (ret)
  return ret;

 cmd.req.arg[1] = state ? QLCNIC_ENABLE_INGRESS_ENCAP_PARSING :
     QLCNIC_DISABLE_INGRESS_ENCAP_PARSING;

 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret)
  netdev_err(adapter->netdev,
      "Failed to %s VXLAN parsing for port %d\n",
      state ? "enable" : "disable", vxlan_port);
 else
  netdev_info(adapter->netdev,
       "%s VXLAN parsing for port %d\n",
       state ? "Enabled" : "Disabled", vxlan_port);

 qlcnic_free_mbx_args(&cmd);

 return ret;
}
