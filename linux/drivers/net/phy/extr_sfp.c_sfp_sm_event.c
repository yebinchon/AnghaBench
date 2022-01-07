
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int sm_mod_state; int sm_dev_state; int sm_state; int state; int sm_mutex; int dev; scalar_t__ mod_phy; int attached; } ;


 int EAGAIN ;
 int SFP_DEV_DOWN ;

 unsigned int SFP_E_DEV_DOWN ;
 unsigned int SFP_E_DEV_UP ;
 unsigned int SFP_E_INSERT ;
 unsigned int SFP_E_REMOVE ;
 unsigned int SFP_E_TIMEOUT ;
 unsigned int SFP_E_TX_CLEAR ;
 unsigned int SFP_E_TX_FAULT ;
 int SFP_F_TX_FAULT ;
 int SFP_MOD_EMPTY ;
 int T_INIT_JIFFIES ;
 int T_PROBE_INIT ;
 int T_PROBE_RETRY ;
 int dev_dbg (int ,char*,int ,int ,int ,...) ;
 int dev_info (int ,char*) ;
 int dev_state_to_str (int) ;
 int event_to_str (unsigned int) ;
 int mod_state_to_str (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sfp_los_event_active (struct sfp*,unsigned int) ;
 int sfp_los_event_inactive (struct sfp*,unsigned int) ;
 int sfp_module_tx_disable (struct sfp*) ;
 int sfp_module_tx_fault_reset (struct sfp*) ;
 int sfp_sm_fault (struct sfp*,int) ;
 int sfp_sm_ins_next (struct sfp*,int,int) ;
 int sfp_sm_link_check_los (struct sfp*) ;
 int sfp_sm_link_down (struct sfp*) ;
 int sfp_sm_link_up (struct sfp*) ;
 int sfp_sm_mod_init (struct sfp*) ;
 int sfp_sm_mod_probe (struct sfp*) ;
 int sfp_sm_mod_remove (struct sfp*) ;
 int sfp_sm_next (struct sfp*,int const,int ) ;
 int sfp_sm_phy_detach (struct sfp*) ;
 int sfp_sm_set_timer (struct sfp*,int ) ;
 int sm_state_to_str (int) ;

__attribute__((used)) static void sfp_sm_event(struct sfp *sfp, unsigned int event)
{
 mutex_lock(&sfp->sm_mutex);

 dev_dbg(sfp->dev, "SM: enter %s:%s:%s event %s\n",
  mod_state_to_str(sfp->sm_mod_state),
  dev_state_to_str(sfp->sm_dev_state),
  sm_state_to_str(sfp->sm_state),
  event_to_str(event));




 switch (sfp->sm_mod_state) {
 default:
  if (event == SFP_E_INSERT && sfp->attached) {
   sfp_module_tx_disable(sfp);
   sfp_sm_ins_next(sfp, 135, T_PROBE_INIT);
  }
  break;

 case 135:
  if (event == SFP_E_REMOVE) {
   sfp_sm_ins_next(sfp, SFP_MOD_EMPTY, 0);
  } else if (event == SFP_E_TIMEOUT) {
   int val = sfp_sm_mod_probe(sfp);

   if (val == 0)
    sfp_sm_ins_next(sfp, 136, 0);
   else if (val > 0)
    sfp_sm_ins_next(sfp, 137, val);
   else if (val != -EAGAIN)
    sfp_sm_ins_next(sfp, 138, 0);
   else
    sfp_sm_set_timer(sfp, T_PROBE_RETRY);
  }
  break;

 case 137:
  if (event == SFP_E_TIMEOUT) {
   sfp_sm_ins_next(sfp, 136, 0);
   break;
  }

 case 136:
 case 138:
  if (event == SFP_E_REMOVE) {
   sfp_sm_mod_remove(sfp);
   sfp_sm_ins_next(sfp, SFP_MOD_EMPTY, 0);
  }
  break;
 }


 switch (sfp->sm_dev_state) {
 default:
  if (event == SFP_E_DEV_UP)
   sfp->sm_dev_state = 139;
  break;

 case 139:
  if (event == SFP_E_DEV_DOWN) {




   if (!sfp->mod_phy)
    sfp_module_tx_disable(sfp);
   sfp->sm_dev_state = SFP_DEV_DOWN;
  }
  break;
 }


 if (sfp->sm_state != 134 &&
     (sfp->sm_mod_state != 136 ||
      sfp->sm_dev_state != 139)) {
  if (sfp->sm_state == 132 &&
      sfp->sm_dev_state == 139)
   sfp_sm_link_down(sfp);
  if (sfp->mod_phy)
   sfp_sm_phy_detach(sfp);
  sfp_sm_next(sfp, 134, 0);
  mutex_unlock(&sfp->sm_mutex);
  return;
 }


 switch (sfp->sm_state) {
 case 134:
  if (sfp->sm_mod_state == 136 &&
      sfp->sm_dev_state == 139)
   sfp_sm_mod_init(sfp);
  break;

 case 133:
  if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT)
   sfp_sm_fault(sfp, 1);
  else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR)
   sfp_sm_link_check_los(sfp);
  break;

 case 128:
  if (event == SFP_E_TX_FAULT)
   sfp_sm_fault(sfp, 1);
  else if (sfp_los_event_inactive(sfp, event))
   sfp_sm_link_up(sfp);
  break;

 case 132:
  if (event == SFP_E_TX_FAULT) {
   sfp_sm_link_down(sfp);
   sfp_sm_fault(sfp, 1);
  } else if (sfp_los_event_active(sfp, event)) {
   sfp_sm_link_down(sfp);
   sfp_sm_next(sfp, 128, 0);
  }
  break;

 case 129:
  if (event == SFP_E_TIMEOUT) {
   sfp_module_tx_fault_reset(sfp);
   sfp_sm_next(sfp, 131, T_INIT_JIFFIES);
  }
  break;

 case 131:
  if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT) {
   sfp_sm_fault(sfp, 0);
  } else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR) {
   dev_info(sfp->dev, "module transmit fault recovered\n");
   sfp_sm_link_check_los(sfp);
  }
  break;

 case 130:
  break;
 }

 dev_dbg(sfp->dev, "SM: exit %s:%s:%s\n",
  mod_state_to_str(sfp->sm_mod_state),
  dev_state_to_str(sfp->sm_dev_state),
  sm_state_to_str(sfp->sm_state));

 mutex_unlock(&sfp->sm_mutex);
}
