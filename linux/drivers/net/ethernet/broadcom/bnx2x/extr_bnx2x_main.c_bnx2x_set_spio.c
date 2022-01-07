
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int DP (int ,char*,int) ;
 int EINVAL ;
 int HW_LOCK_RESOURCE_SPIO ;
 int MISC_REG_SPIO ;
 int MISC_SPIO_CLR_POS ;
 int MISC_SPIO_FLOAT ;
 int MISC_SPIO_FLOAT_POS ;



 int MISC_SPIO_SET_POS ;
 int MISC_SPIO_SPIO4 ;
 int MISC_SPIO_SPIO5 ;
 int NETIF_MSG_HW ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

__attribute__((used)) static int bnx2x_set_spio(struct bnx2x *bp, int spio, u32 mode)
{
 u32 spio_reg;


 if ((spio != MISC_SPIO_SPIO4) && (spio != MISC_SPIO_SPIO5)) {
  BNX2X_ERR("Invalid SPIO 0x%x\n", spio);
  return -EINVAL;
 }

 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_SPIO);

 spio_reg = (REG_RD(bp, MISC_REG_SPIO) & MISC_SPIO_FLOAT);

 switch (mode) {
 case 128:
  DP(NETIF_MSG_HW, "Set SPIO 0x%x -> output low\n", spio);

  spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
  spio_reg |= (spio << MISC_SPIO_CLR_POS);
  break;

 case 129:
  DP(NETIF_MSG_HW, "Set SPIO 0x%x -> output high\n", spio);

  spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
  spio_reg |= (spio << MISC_SPIO_SET_POS);
  break;

 case 130:
  DP(NETIF_MSG_HW, "Set SPIO 0x%x -> input\n", spio);

  spio_reg |= (spio << MISC_SPIO_FLOAT_POS);
  break;

 default:
  break;
 }

 REG_WR(bp, MISC_REG_SPIO, spio_reg);
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_SPIO);

 return 0;
}
