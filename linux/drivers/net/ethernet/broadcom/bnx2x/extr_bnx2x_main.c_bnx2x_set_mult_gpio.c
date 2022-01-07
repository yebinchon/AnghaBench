
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int DP (int ,char*,int) ;
 int EINVAL ;
 int HW_LOCK_RESOURCE_GPIO ;
 int MISC_REGISTERS_GPIO_CLR_POS ;
 int MISC_REGISTERS_GPIO_FLOAT_POS ;



 int MISC_REGISTERS_GPIO_SET_POS ;
 int MISC_REG_GPIO ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

int bnx2x_set_mult_gpio(struct bnx2x *bp, u8 pins, u32 mode)
{
 u32 gpio_reg = 0;
 int rc = 0;



 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_GPIO);

 gpio_reg = REG_RD(bp, MISC_REG_GPIO);
 gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_FLOAT_POS);
 gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_CLR_POS);
 gpio_reg &= ~(pins << MISC_REGISTERS_GPIO_SET_POS);

 switch (mode) {
 case 128:
  DP(NETIF_MSG_LINK, "Set GPIO 0x%x -> output low\n", pins);

  gpio_reg |= (pins << MISC_REGISTERS_GPIO_CLR_POS);
  break;

 case 129:
  DP(NETIF_MSG_LINK, "Set GPIO 0x%x -> output high\n", pins);

  gpio_reg |= (pins << MISC_REGISTERS_GPIO_SET_POS);
  break;

 case 130:
  DP(NETIF_MSG_LINK, "Set GPIO 0x%x -> input\n", pins);

  gpio_reg |= (pins << MISC_REGISTERS_GPIO_FLOAT_POS);
  break;

 default:
  BNX2X_ERR("Invalid GPIO mode assignment %d\n", mode);
  rc = -EINVAL;
  break;
 }

 if (rc == 0)
  REG_WR(bp, MISC_REG_GPIO, gpio_reg);

 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_GPIO);

 return rc;
}
