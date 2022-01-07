
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* supported; } ;
struct bnx2x {TYPE_1__ port; } ;


 int SUPPORTED_20000baseKR2_Full ;
 int SUPPORTED_20000baseMLD2_Full ;
 size_t bnx2x_get_link_cfg_idx (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_max_speed_cap(struct bnx2x *bp)
{
 u32 supported = bp->port.supported[bnx2x_get_link_cfg_idx(bp)];

 if (supported &
     (SUPPORTED_20000baseMLD2_Full | SUPPORTED_20000baseKR2_Full))
  return 20000;

 return 10000;
}
