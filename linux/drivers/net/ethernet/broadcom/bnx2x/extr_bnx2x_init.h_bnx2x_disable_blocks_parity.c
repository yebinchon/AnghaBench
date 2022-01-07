
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {int name; int mask_addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DP (int ,char*,int ,scalar_t__) ;
 int NETIF_MSG_HW ;
 int REG_WR (struct bnx2x*,int ,scalar_t__) ;
 TYPE_1__* bnx2x_blocks_parity_data ;
 scalar_t__ bnx2x_parity_reg_mask (struct bnx2x*,int) ;
 int bnx2x_set_mcp_parity (struct bnx2x*,int) ;

__attribute__((used)) static inline void bnx2x_disable_blocks_parity(struct bnx2x *bp)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bnx2x_blocks_parity_data); i++) {
  u32 dis_mask = bnx2x_parity_reg_mask(bp, i);

  if (dis_mask) {
   REG_WR(bp, bnx2x_blocks_parity_data[i].mask_addr,
          dis_mask);
   DP(NETIF_MSG_HW, "Setting parity mask "
       "for %s to\t\t0x%x\n",
        bnx2x_blocks_parity_data[i].name, dis_mask);
  }
 }


 bnx2x_set_mcp_parity(bp, 0);
}
