
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int state; int dev; } ;


 int SFP_F_TX_DISABLE ;
 int dev_dbg (int ,char*,int,int) ;
 int sfp_set_state (struct sfp*,int) ;

__attribute__((used)) static void sfp_module_tx_disable(struct sfp *sfp)
{
 dev_dbg(sfp->dev, "tx disable %u -> %u\n",
  sfp->state & SFP_F_TX_DISABLE ? 1 : 0, 1);
 sfp->state |= SFP_F_TX_DISABLE;
 sfp_set_state(sfp, sfp->state);
}
