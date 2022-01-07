
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt {int flags; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int __bnxt_setup_vnic (struct bnxt*,int ) ;
 int __bnxt_setup_vnic_p5 (struct bnxt*,int ) ;

__attribute__((used)) static int bnxt_setup_vnic(struct bnxt *bp, u16 vnic_id)
{
 if (bp->flags & BNXT_FLAG_CHIP_P5)
  return __bnxt_setup_vnic_p5(bp, vnic_id);
 else
  return __bnxt_setup_vnic(bp, vnic_id);
}
