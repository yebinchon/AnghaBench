
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int) ;
 int DP (int ,char*,int,int) ;
 int EINVAL ;
 int HW_LOCK_RESOURCE_GPIO ;
 int MISC_REGISTERS_GPIO_3 ;
 int MISC_REGISTERS_GPIO_CLR_POS ;
 int MISC_REGISTERS_GPIO_FLOAT ;
 int MISC_REGISTERS_GPIO_FLOAT_POS ;



 int MISC_REGISTERS_GPIO_PORT_SHIFT ;
 int MISC_REGISTERS_GPIO_SET_POS ;
 int MISC_REG_GPIO ;
 int NETIF_MSG_LINK ;
 int NIG_REG_PORT_SWAP ;
 int NIG_REG_STRAP_OVERRIDE ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

int bnx2x_set_gpio(struct bnx2x *bp, int gpio_num, u32 mode, u8 port)
{

 int gpio_port = (REG_RD(bp, NIG_REG_PORT_SWAP) &&
    REG_RD(bp, NIG_REG_STRAP_OVERRIDE)) ^ port;
 int gpio_shift = gpio_num +
   (gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0);
 u32 gpio_mask = (1 << gpio_shift);
 u32 gpio_reg;

 if (gpio_num > MISC_REGISTERS_GPIO_3) {
  BNX2X_ERR("Invalid GPIO %d\n", gpio_num);
  return -EINVAL;
 }

 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_GPIO);

 gpio_reg = (REG_RD(bp, MISC_REG_GPIO) & MISC_REGISTERS_GPIO_FLOAT);

 switch (mode) {
 case 128:
  DP(NETIF_MSG_LINK,
     "Set GPIO %d (shift %d) -> output low\n",
     gpio_num, gpio_shift);

  gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_FLOAT_POS);
  gpio_reg |= (gpio_mask << MISC_REGISTERS_GPIO_CLR_POS);
  break;

 case 129:
  DP(NETIF_MSG_LINK,
     "Set GPIO %d (shift %d) -> output high\n",
     gpio_num, gpio_shift);

  gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_FLOAT_POS);
  gpio_reg |= (gpio_mask << MISC_REGISTERS_GPIO_SET_POS);
  break;

 case 130:
  DP(NETIF_MSG_LINK,
     "Set GPIO %d (shift %d) -> input\n",
     gpio_num, gpio_shift);

  gpio_reg |= (gpio_mask << MISC_REGISTERS_GPIO_FLOAT_POS);
  break;

 default:
  break;
 }

 REG_WR(bp, MISC_REG_GPIO, gpio_reg);
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_GPIO);

 return 0;
}
