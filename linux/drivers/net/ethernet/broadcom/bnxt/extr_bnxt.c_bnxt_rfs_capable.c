
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv_vnics; } ;
struct bnxt {int flags; int rx_nr_rings; int dev; TYPE_1__ hw_resc; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_MSIX_CAP ;
 int BNXT_FLAG_NEW_RSS_CAP ;
 int BNXT_NEW_RM (struct bnxt*) ;
 int bnxt_can_reserve_rings (struct bnxt*) ;
 int bnxt_get_max_func_rss_ctxs (struct bnxt*) ;
 int bnxt_get_max_func_vnics (struct bnxt*) ;
 int bnxt_hwrm_reserve_rings (struct bnxt*,int ,int ,int ,int ,int ,int) ;
 int bnxt_rfs_supported (struct bnxt*) ;
 int min (int,int) ;
 int netdev_warn (int ,char*,...) ;

__attribute__((used)) static bool bnxt_rfs_capable(struct bnxt *bp)
{
 return 0;

}
