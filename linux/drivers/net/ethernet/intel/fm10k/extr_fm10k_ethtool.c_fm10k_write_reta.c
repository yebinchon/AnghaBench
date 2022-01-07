
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {int* reta; struct fm10k_hw hw; TYPE_1__* ring_feature; } ;
struct TYPE_2__ {int indices; } ;


 int FM10K_RETA (int ,int) ;
 int FM10K_RETA_SIZE ;
 size_t RING_F_RSS ;
 int ethtool_rxfh_indir_default (int,int ) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;

void fm10k_write_reta(struct fm10k_intfc *interface, const u32 *indir)
{
 u16 rss_i = interface->ring_feature[RING_F_RSS].indices;
 struct fm10k_hw *hw = &interface->hw;
 u32 table[4];
 int i, j;


 for (i = 0; i < FM10K_RETA_SIZE; i++) {
  u32 reta, n;


  for (j = 0; j < 4; j++) {
   if (indir)
    n = indir[4 * i + j];
   else
    n = ethtool_rxfh_indir_default(4 * i + j,
              rss_i);

   table[j] = n;
  }

  reta = table[0] |
   (table[1] << 8) |
   (table[2] << 16) |
   (table[3] << 24);

  if (interface->reta[i] == reta)
   continue;

  interface->reta[i] = reta;
  fm10k_write_reg(hw, FM10K_RETA(0, i), reta);
 }
}
