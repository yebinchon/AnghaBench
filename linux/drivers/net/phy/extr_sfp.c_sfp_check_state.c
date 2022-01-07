
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {unsigned int state; int st_mutex; int dev; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int GPIO_MAX ;
 int SFP_E_INSERT ;
 int SFP_E_LOS_HIGH ;
 int SFP_E_LOS_LOW ;
 int SFP_E_REMOVE ;
 int SFP_E_TX_CLEAR ;
 int SFP_E_TX_FAULT ;
 unsigned int SFP_F_LOS ;
 unsigned int SFP_F_PRESENT ;
 unsigned int SFP_F_RATE_SELECT ;
 unsigned int SFP_F_TX_DISABLE ;
 unsigned int SFP_F_TX_FAULT ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int * gpio_of_names ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 unsigned int sfp_get_state (struct sfp*) ;
 int sfp_sm_event (struct sfp*,int ) ;

__attribute__((used)) static void sfp_check_state(struct sfp *sfp)
{
 unsigned int state, i, changed;

 mutex_lock(&sfp->st_mutex);
 state = sfp_get_state(sfp);
 changed = state ^ sfp->state;
 changed &= SFP_F_PRESENT | SFP_F_LOS | SFP_F_TX_FAULT;

 for (i = 0; i < GPIO_MAX; i++)
  if (changed & BIT(i))
   dev_dbg(sfp->dev, "%s %u -> %u\n", gpio_of_names[i],
    !!(sfp->state & BIT(i)), !!(state & BIT(i)));

 state |= sfp->state & (SFP_F_TX_DISABLE | SFP_F_RATE_SELECT);
 sfp->state = state;

 rtnl_lock();
 if (changed & SFP_F_PRESENT)
  sfp_sm_event(sfp, state & SFP_F_PRESENT ?
    SFP_E_INSERT : SFP_E_REMOVE);

 if (changed & SFP_F_TX_FAULT)
  sfp_sm_event(sfp, state & SFP_F_TX_FAULT ?
    SFP_E_TX_FAULT : SFP_E_TX_CLEAR);

 if (changed & SFP_F_LOS)
  sfp_sm_event(sfp, state & SFP_F_LOS ?
    SFP_E_LOS_HIGH : SFP_E_LOS_LOW);
 rtnl_unlock();
 mutex_unlock(&sfp->st_mutex);
}
