
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int * iscsi_mac; } ;
struct bnx2x {int flags; int mf_ext_config; int * fip_mac; TYPE_2__* dev; TYPE_1__ cnic_eth_dev; } ;
struct TYPE_10__ {TYPE_3__* port_hw_config; } ;
struct TYPE_9__ {int fcoe_mac_addr_lower; int fcoe_mac_addr_upper; int iscsi_mac_addr_lower; int iscsi_mac_addr_upper; int func_cfg; } ;
struct TYPE_8__ {int fcoe_fip_mac_lower; int fcoe_fip_mac_upper; int iscsi_mac_lower; int iscsi_mac_upper; } ;
struct TYPE_7__ {int * dev_addr; } ;


 int BNX2X_DEV_INFO (char*,...) ;
 scalar_t__ BNX2X_IS_MF_SD_PROTOCOL_FCOE (struct bnx2x*) ;
 scalar_t__ BNX2X_IS_MF_SD_PROTOCOL_ISCSI (struct bnx2x*) ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 int BP_PORT (struct bnx2x*) ;
 int ETH_ALEN ;
 scalar_t__ IS_MF (struct bnx2x*) ;
 scalar_t__ IS_MF_FCOE_AFEX (struct bnx2x*) ;
 int IS_MF_SD (struct bnx2x*) ;
 int MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD ;
 int MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD ;
 int MF_CFG_RD (struct bnx2x*,int ) ;
 int NO_FCOE_FLAG ;
 int NO_ISCSI_FLAG ;
 int NO_ISCSI_OOO_FLAG ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int bnx2x_set_mac_buf (int *,int,int) ;
 TYPE_5__ dev_info ;
 int eth_zero_addr (int *) ;
 TYPE_4__* func_ext_config ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void bnx2x_get_cnic_mac_hwinfo(struct bnx2x *bp)
{
 u32 val, val2;
 int func = BP_ABS_FUNC(bp);
 int port = BP_PORT(bp);
 u8 *iscsi_mac = bp->cnic_eth_dev.iscsi_mac;
 u8 *fip_mac = bp->fip_mac;

 if (IS_MF(bp)) {





  if (!IS_MF_SD(bp)) {
   u32 cfg = MF_CFG_RD(bp, func_ext_config[func].func_cfg);
   if (cfg & MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD) {
    val2 = MF_CFG_RD(bp, func_ext_config[func].
       iscsi_mac_addr_upper);
    val = MF_CFG_RD(bp, func_ext_config[func].
      iscsi_mac_addr_lower);
    bnx2x_set_mac_buf(iscsi_mac, val, val2);
    BNX2X_DEV_INFO
     ("Read iSCSI MAC: %pM\n", iscsi_mac);
   } else {
    bp->flags |= NO_ISCSI_OOO_FLAG | NO_ISCSI_FLAG;
   }

   if (cfg & MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD) {
    val2 = MF_CFG_RD(bp, func_ext_config[func].
       fcoe_mac_addr_upper);
    val = MF_CFG_RD(bp, func_ext_config[func].
      fcoe_mac_addr_lower);
    bnx2x_set_mac_buf(fip_mac, val, val2);
    BNX2X_DEV_INFO
     ("Read FCoE L2 MAC: %pM\n", fip_mac);
   } else {
    bp->flags |= NO_FCOE_FLAG;
   }

   bp->mf_ext_config = cfg;

  } else {
   if (BNX2X_IS_MF_SD_PROTOCOL_ISCSI(bp)) {

    memcpy(iscsi_mac, bp->dev->dev_addr, ETH_ALEN);

    BNX2X_DEV_INFO("SD ISCSI MODE\n");
    BNX2X_DEV_INFO
     ("Read iSCSI MAC: %pM\n", iscsi_mac);
   } else if (BNX2X_IS_MF_SD_PROTOCOL_FCOE(bp)) {

    memcpy(fip_mac, bp->dev->dev_addr, ETH_ALEN);
    BNX2X_DEV_INFO("SD FCoE MODE\n");
    BNX2X_DEV_INFO
     ("Read FIP MAC: %pM\n", fip_mac);
   }
  }





  if (IS_MF_FCOE_AFEX(bp))
   memcpy(bp->dev->dev_addr, fip_mac, ETH_ALEN);
 } else {
  val2 = SHMEM_RD(bp, dev_info.port_hw_config[port].
    iscsi_mac_upper);
  val = SHMEM_RD(bp, dev_info.port_hw_config[port].
          iscsi_mac_lower);
  bnx2x_set_mac_buf(iscsi_mac, val, val2);

  val2 = SHMEM_RD(bp, dev_info.port_hw_config[port].
    fcoe_fip_mac_upper);
  val = SHMEM_RD(bp, dev_info.port_hw_config[port].
          fcoe_fip_mac_lower);
  bnx2x_set_mac_buf(fip_mac, val, val2);
 }


 if (!is_valid_ether_addr(iscsi_mac)) {
  bp->flags |= NO_ISCSI_OOO_FLAG | NO_ISCSI_FLAG;
  eth_zero_addr(iscsi_mac);
 }


 if (!is_valid_ether_addr(fip_mac)) {
  bp->flags |= NO_FCOE_FLAG;
  eth_zero_addr(bp->fip_mac);
 }
}
