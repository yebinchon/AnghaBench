
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int netdev; TYPE_2__* ahw; } ;
typedef int cmd ;
struct TYPE_4__ {int vxlan_port; } ;


 int QLCNIC_CMD_INIT_NIC_FUNC ;
 int QLC_83XX_ENCAP_TYPE_VXLAN ;
 int QLC_83XX_MULTI_TENANCY_INFO ;
 int QLC_83XX_SET_VXLAN_UDP_DPORT ;
 int QLC_83XX_VXLAN_UDP_DPORT (int ) ;
 int memset (struct qlcnic_cmd_args*,int ,int) ;
 int netdev_err (int ,char*,int ) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_set_vxlan_port(struct qlcnic_adapter *adapter)
{
 u16 port = adapter->ahw->vxlan_port;
 struct qlcnic_cmd_args cmd;
 int ret = 0;

 memset(&cmd, 0, sizeof(cmd));

 ret = qlcnic_alloc_mbx_args(&cmd, adapter,
        QLCNIC_CMD_INIT_NIC_FUNC);
 if (ret)
  return ret;

 cmd.req.arg[1] = QLC_83XX_MULTI_TENANCY_INFO;
 cmd.req.arg[2] = QLC_83XX_ENCAP_TYPE_VXLAN |
    QLC_83XX_SET_VXLAN_UDP_DPORT |
    QLC_83XX_VXLAN_UDP_DPORT(port);

 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret)
  netdev_err(adapter->netdev,
      "Failed to set VXLAN port %d in adapter\n",
      port);

 qlcnic_free_mbx_args(&cmd);

 return ret;
}
