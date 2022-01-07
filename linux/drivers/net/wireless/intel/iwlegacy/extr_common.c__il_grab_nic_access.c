
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ;
 int CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_FORCE_NMI ;
 int WARN_ONCE (int,char*,int ) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int,int) ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_set_bit (struct il_priv*,int ,int ) ;
 int _il_wr (struct il_priv*,int ,int ) ;
 scalar_t__ unlikely (int) ;

bool
_il_grab_nic_access(struct il_priv *il)
{
 int ret;
 u32 val;


 _il_set_bit(il, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
 ret =
     _il_poll_bit(il, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN,
    (CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY |
     CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP), 15000);
 if (unlikely(ret < 0)) {
  val = _il_rd(il, CSR_GP_CNTRL);
  WARN_ONCE(1, "Timeout waiting for ucode processor access "
        "(CSR_GP_CNTRL 0x%08x)\n", val);
  _il_wr(il, CSR_RESET, CSR_RESET_REG_FLAG_FORCE_NMI);
  return 0;
 }

 return 1;
}
