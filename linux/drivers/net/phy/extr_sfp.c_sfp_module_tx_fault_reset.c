
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {unsigned int state; } ;


 unsigned int SFP_F_TX_DISABLE ;
 int T_RESET_US ;
 int sfp_set_state (struct sfp*,unsigned int) ;
 int udelay (int ) ;

__attribute__((used)) static void sfp_module_tx_fault_reset(struct sfp *sfp)
{
 unsigned int state = sfp->state;

 if (state & SFP_F_TX_DISABLE)
  return;

 sfp_set_state(sfp, state | SFP_F_TX_DISABLE);

 udelay(T_RESET_US);

 sfp_set_state(sfp, state);
}
