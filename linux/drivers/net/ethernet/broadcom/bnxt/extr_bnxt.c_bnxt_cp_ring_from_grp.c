
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_ring_struct {size_t grp_idx; } ;
struct bnxt_ring_grp_info {int cp_fw_ring_id; } ;
struct bnxt {struct bnxt_ring_grp_info* grp_info; } ;



__attribute__((used)) static u16 bnxt_cp_ring_from_grp(struct bnxt *bp, struct bnxt_ring_struct *ring)
{
 struct bnxt_ring_grp_info *grp_info;

 grp_info = &bp->grp_info[ring->grp_idx];
 return grp_info->cp_fw_ring_id;
}
