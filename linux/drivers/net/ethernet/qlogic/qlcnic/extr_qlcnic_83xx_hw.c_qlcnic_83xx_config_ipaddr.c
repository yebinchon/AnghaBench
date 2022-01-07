
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* netdev; } ;
typedef int __be32 ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_CONFIGURE_IP_ADDR ;
 int QLCNIC_IP_UP ;
 int QLCNIC_RCODE_SUCCESS ;
 int dev_err (int *,char*,char*,int ) ;
 int memcpy (int*,int*,int) ;
 int ntohl (int ) ;
 int qlcnic_83xx_set_interface_id_ipaddr (struct qlcnic_adapter*,int*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int swab32 (int ) ;

void qlcnic_83xx_config_ipaddr(struct qlcnic_adapter *adapter, __be32 ip,
          int mode)
{
 int err;
 u32 temp = 0, temp_ip;
 struct qlcnic_cmd_args cmd;

 err = qlcnic_alloc_mbx_args(&cmd, adapter,
        QLCNIC_CMD_CONFIGURE_IP_ADDR);
 if (err)
  return;

 qlcnic_83xx_set_interface_id_ipaddr(adapter, &temp);

 if (mode == QLCNIC_IP_UP)
  cmd.req.arg[1] = 1 | temp;
 else
  cmd.req.arg[1] = 2 | temp;
 temp_ip = swab32(ntohl(ip));
 memcpy(&cmd.req.arg[2], &temp_ip, sizeof(u32));
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err != QLCNIC_RCODE_SUCCESS)
  dev_err(&adapter->netdev->dev,
   "could not notify %s IP 0x%x request\n",
   (mode == QLCNIC_IP_UP) ? "Add" : "Remove", ip);

 qlcnic_free_mbx_args(&cmd);
}
