
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_iscsi_conn; } ;
struct bnx2x {int flags; TYPE_1__ cnic_eth_dev; } ;
struct TYPE_4__ {int max_iscsi_conn; } ;


 int BNX2X_DEV_INFO (char*,int) ;
 int BNX2X_MAX_ISCSI_INIT_CONN_MASK ;
 int BNX2X_MAX_ISCSI_INIT_CONN_SHIFT ;
 int BP_PORT (struct bnx2x*) ;
 int CNIC_SUPPORT (struct bnx2x*) ;
 int FW_ENCODE_32BIT_PATTERN ;
 int NO_ISCSI_FLAG ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 TYPE_2__* drv_lic_key ;

void bnx2x_get_iscsi_info(struct bnx2x *bp)
{
 u32 no_flags = NO_ISCSI_FLAG;
 int port = BP_PORT(bp);
 u32 max_iscsi_conn = FW_ENCODE_32BIT_PATTERN ^ SHMEM_RD(bp,
    drv_lic_key[port].max_iscsi_conn);

 if (!CNIC_SUPPORT(bp)) {
  bp->flags |= no_flags;
  return;
 }


 bp->cnic_eth_dev.max_iscsi_conn =
  (max_iscsi_conn & BNX2X_MAX_ISCSI_INIT_CONN_MASK) >>
  BNX2X_MAX_ISCSI_INIT_CONN_SHIFT;

 BNX2X_DEV_INFO("max_iscsi_conn 0x%x\n",
         bp->cnic_eth_dev.max_iscsi_conn);





 if (!bp->cnic_eth_dev.max_iscsi_conn)
  bp->flags |= no_flags;
}
