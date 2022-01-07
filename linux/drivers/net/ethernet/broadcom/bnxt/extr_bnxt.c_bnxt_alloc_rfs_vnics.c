
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct bnxt_vnic_info {int flags; } ;
struct bnxt {int flags; int rx_nr_rings; size_t nr_vnics; int dev; struct bnxt_vnic_info* vnic_info; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_NEW_RSS_CAP ;
 int BNXT_VNIC_RFS_FLAG ;
 int BNXT_VNIC_RFS_NEW_RSS_FLAG ;
 int bnxt_hwrm_vnic_alloc (struct bnxt*,size_t,size_t,int) ;
 int bnxt_setup_vnic (struct bnxt*,size_t) ;
 int netdev_err (int ,char*,size_t,int) ;

__attribute__((used)) static int bnxt_alloc_rfs_vnics(struct bnxt *bp)
{
 return 0;

}
