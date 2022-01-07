
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bnx2x_fastpath {scalar_t__ cl_id; int bp; } ;


 int BP_PORT (int ) ;
 scalar_t__ CHIP_IS_E1x (int ) ;
 int ETH_MAX_RX_CLIENTS_E1H ;

__attribute__((used)) static inline u8 bnx2x_fp_qzone_id(struct bnx2x_fastpath *fp)
{
 if (CHIP_IS_E1x(fp->bp))
  return fp->cl_id + BP_PORT(fp->bp) * ETH_MAX_RX_CLIENTS_E1H;
 else
  return fp->cl_id;
}
