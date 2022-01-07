
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnxt {int hwrm_cmd_kong_seq; int hwrm_cmd_seq; } ;


 scalar_t__ BNXT_HWRM_CHNL_CHIMP ;

__attribute__((used)) static inline u16 bnxt_get_hwrm_seq_id(struct bnxt *bp, u16 dst)
{
 u16 seq_id;

 if (dst == BNXT_HWRM_CHNL_CHIMP)
  seq_id = bp->hwrm_cmd_seq++;
 else
  seq_id = bp->hwrm_cmd_kong_seq++;
 return seq_id;
}
