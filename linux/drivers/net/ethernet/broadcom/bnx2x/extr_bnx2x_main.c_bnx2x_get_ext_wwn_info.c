
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* fcoe_wwn_node_name_lo; void* fcoe_wwn_node_name_hi; void* fcoe_wwn_port_name_lo; void* fcoe_wwn_port_name_hi; } ;
struct bnx2x {TYPE_1__ cnic_eth_dev; } ;
struct TYPE_4__ {int fcoe_wwn_node_name_lower; int fcoe_wwn_node_name_upper; int fcoe_wwn_port_name_lower; int fcoe_wwn_port_name_upper; } ;


 void* MF_CFG_RD (struct bnx2x*,int ) ;
 TYPE_2__* func_ext_config ;

__attribute__((used)) static void bnx2x_get_ext_wwn_info(struct bnx2x *bp, int func)
{

 bp->cnic_eth_dev.fcoe_wwn_port_name_hi =
  MF_CFG_RD(bp, func_ext_config[func].fcoe_wwn_port_name_upper);
 bp->cnic_eth_dev.fcoe_wwn_port_name_lo =
  MF_CFG_RD(bp, func_ext_config[func].fcoe_wwn_port_name_lower);


 bp->cnic_eth_dev.fcoe_wwn_node_name_hi =
  MF_CFG_RD(bp, func_ext_config[func].fcoe_wwn_node_name_upper);
 bp->cnic_eth_dev.fcoe_wwn_node_name_lo =
  MF_CFG_RD(bp, func_ext_config[func].fcoe_wwn_node_name_lower);
}
