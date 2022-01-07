
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_vnic_info {int dummy; } ;
struct bnxt {int flags; int nr_vnics; int vnic_info; scalar_t__ rx_nr_rings; } ;


 scalar_t__ BNXT_CHIP_TYPE_NITRO_A0 (struct bnxt*) ;
 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_RFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int,int,int ) ;

__attribute__((used)) static int bnxt_alloc_vnics(struct bnxt *bp)
{
 int num_vnics = 1;






 if (BNXT_CHIP_TYPE_NITRO_A0(bp))
  num_vnics++;

 bp->vnic_info = kcalloc(num_vnics, sizeof(struct bnxt_vnic_info),
    GFP_KERNEL);
 if (!bp->vnic_info)
  return -ENOMEM;

 bp->nr_vnics = num_vnics;
 return 0;
}
