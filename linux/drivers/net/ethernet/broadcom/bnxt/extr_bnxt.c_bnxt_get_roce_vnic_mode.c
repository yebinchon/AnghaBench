
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt {int flags; } ;


 int BNXT_FLAG_ROCE_MIRROR_CAP ;
 int VNIC_CFG_REQ_FLAGS_ROCE_DUAL_VNIC_MODE ;
 int VNIC_CFG_REQ_FLAGS_ROCE_MIRRORING_CAPABLE_VNIC_MODE ;

__attribute__((used)) static u32 bnxt_get_roce_vnic_mode(struct bnxt *bp)
{
 if (bp->flags & BNXT_FLAG_ROCE_MIRROR_CAP)
  return VNIC_CFG_REQ_FLAGS_ROCE_MIRRORING_CAPABLE_VNIC_MODE;
 return VNIC_CFG_REQ_FLAGS_ROCE_DUAL_VNIC_MODE;
}
