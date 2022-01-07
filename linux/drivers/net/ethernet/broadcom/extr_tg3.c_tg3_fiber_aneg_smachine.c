
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tg3_fiber_aneginfo {int state; int rxconfig; unsigned long link_time; unsigned long cur_time; int ability_match_cfg; int ability_match_count; int ability_match; int idle_match; int ack_match; int flags; int txconfig; } ;
struct TYPE_2__ {int flowctrl; } ;
struct tg3 {int mac_mode; TYPE_1__ link_config; } ;


 int ADVERTISE_1000XPAUSE ;
 int ADVERTISE_1000XPSE_ASYM ;
 int ANEG_CFG_ACK ;
 int ANEG_CFG_FD ;
 int ANEG_CFG_HD ;
 int ANEG_CFG_INVAL ;
 int ANEG_CFG_NP ;
 int ANEG_CFG_PS1 ;
 int ANEG_CFG_PS2 ;
 int ANEG_CFG_RF1 ;
 int ANEG_CFG_RF2 ;
 int ANEG_DONE ;
 int ANEG_FAILED ;
 int ANEG_OK ;
 unsigned long ANEG_STATE_SETTLE_TIME ;

 int ANEG_TIMER_ENAB ;
 int MAC_MODE ;
 int MAC_MODE_SEND_CONFIGS ;
 int MAC_RX_AUTO_NEG ;
 int MAC_STATUS ;
 int MAC_STATUS_RCVD_CFG ;
 int MAC_TX_AUTO_NEG ;
 int MR_AN_COMPLETE ;
 int MR_AN_ENABLE ;
 int MR_LINK_OK ;
 int MR_LP_ADV_ASYM_PAUSE ;
 int MR_LP_ADV_FULL_DUPLEX ;
 int MR_LP_ADV_HALF_DUPLEX ;
 int MR_LP_ADV_NEXT_PAGE ;
 int MR_LP_ADV_REMOTE_FAULT1 ;
 int MR_LP_ADV_REMOTE_FAULT2 ;
 int MR_LP_ADV_SYM_PAUSE ;
 int MR_NP_LOADED ;
 int MR_NP_RX ;
 int MR_PAGE_RX ;
 int MR_RESTART_AN ;
 int MR_TOGGLE_RX ;
 int MR_TOGGLE_TX ;
 int tg3_advert_flowctrl_1000X (int ) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;
 int tw32_f (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_fiber_aneg_smachine(struct tg3 *tp,
       struct tg3_fiber_aneginfo *ap)
{
 u16 flowctrl;
 unsigned long delta;
 u32 rx_cfg_reg;
 int ret;

 if (ap->state == 128) {
  ap->rxconfig = 0;
  ap->link_time = 0;
  ap->cur_time = 0;
  ap->ability_match_cfg = 0;
  ap->ability_match_count = 0;
  ap->ability_match = 0;
  ap->idle_match = 0;
  ap->ack_match = 0;
 }
 ap->cur_time++;

 if (tr32(MAC_STATUS) & MAC_STATUS_RCVD_CFG) {
  rx_cfg_reg = tr32(MAC_RX_AUTO_NEG);

  if (rx_cfg_reg != ap->ability_match_cfg) {
   ap->ability_match_cfg = rx_cfg_reg;
   ap->ability_match = 0;
   ap->ability_match_count = 0;
  } else {
   if (++ap->ability_match_count > 1) {
    ap->ability_match = 1;
    ap->ability_match_cfg = rx_cfg_reg;
   }
  }
  if (rx_cfg_reg & ANEG_CFG_ACK)
   ap->ack_match = 1;
  else
   ap->ack_match = 0;

  ap->idle_match = 0;
 } else {
  ap->idle_match = 1;
  ap->ability_match_cfg = 0;
  ap->ability_match_count = 0;
  ap->ability_match = 0;
  ap->ack_match = 0;

  rx_cfg_reg = 0;
 }

 ap->rxconfig = rx_cfg_reg;
 ret = ANEG_OK;

 switch (ap->state) {
 case 128:
  if (ap->flags & (MR_AN_ENABLE | MR_RESTART_AN))
   ap->state = 139;


 case 139:
  ap->flags &= ~(MR_AN_COMPLETE | MR_PAGE_RX);
  if (ap->flags & MR_AN_ENABLE) {
   ap->link_time = 0;
   ap->cur_time = 0;
   ap->ability_match_cfg = 0;
   ap->ability_match_count = 0;
   ap->ability_match = 0;
   ap->idle_match = 0;
   ap->ack_match = 0;

   ap->state = 129;
  } else {
   ap->state = 136;
  }
  break;

 case 129:
  ap->link_time = ap->cur_time;
  ap->flags &= ~(MR_NP_LOADED);
  ap->txconfig = 0;
  tw32(MAC_TX_AUTO_NEG, 0);
  tp->mac_mode |= MAC_MODE_SEND_CONFIGS;
  tw32_f(MAC_MODE, tp->mac_mode);
  udelay(40);

  ret = ANEG_TIMER_ENAB;
  ap->state = 130;


 case 130:
  delta = ap->cur_time - ap->link_time;
  if (delta > ANEG_STATE_SETTLE_TIME)
   ap->state = 142;
  else
   ret = ANEG_TIMER_ENAB;
  break;

 case 136:
  ret = ANEG_DONE;
  break;

 case 142:
  ap->flags &= ~(MR_TOGGLE_TX);
  ap->txconfig = ANEG_CFG_FD;
  flowctrl = tg3_advert_flowctrl_1000X(tp->link_config.flowctrl);
  if (flowctrl & ADVERTISE_1000XPAUSE)
   ap->txconfig |= ANEG_CFG_PS1;
  if (flowctrl & ADVERTISE_1000XPSE_ASYM)
   ap->txconfig |= ANEG_CFG_PS2;
  tw32(MAC_TX_AUTO_NEG, ap->txconfig);
  tp->mac_mode |= MAC_MODE_SEND_CONFIGS;
  tw32_f(MAC_MODE, tp->mac_mode);
  udelay(40);

  ap->state = 143;
  break;

 case 143:
  if (ap->ability_match != 0 && ap->rxconfig != 0)
   ap->state = 140;
  break;

 case 140:
  ap->txconfig |= ANEG_CFG_ACK;
  tw32(MAC_TX_AUTO_NEG, ap->txconfig);
  tp->mac_mode |= MAC_MODE_SEND_CONFIGS;
  tw32_f(MAC_MODE, tp->mac_mode);
  udelay(40);

  ap->state = 141;


 case 141:
  if (ap->ack_match != 0) {
   if ((ap->rxconfig & ~ANEG_CFG_ACK) ==
       (ap->ability_match_cfg & ~ANEG_CFG_ACK)) {
    ap->state = 137;
   } else {
    ap->state = 139;
   }
  } else if (ap->ability_match != 0 &&
      ap->rxconfig == 0) {
   ap->state = 139;
  }
  break;

 case 137:
  if (ap->rxconfig & ANEG_CFG_INVAL) {
   ret = ANEG_FAILED;
   break;
  }
  ap->flags &= ~(MR_LP_ADV_FULL_DUPLEX |
          MR_LP_ADV_HALF_DUPLEX |
          MR_LP_ADV_SYM_PAUSE |
          MR_LP_ADV_ASYM_PAUSE |
          MR_LP_ADV_REMOTE_FAULT1 |
          MR_LP_ADV_REMOTE_FAULT2 |
          MR_LP_ADV_NEXT_PAGE |
          MR_TOGGLE_RX |
          MR_NP_RX);
  if (ap->rxconfig & ANEG_CFG_FD)
   ap->flags |= MR_LP_ADV_FULL_DUPLEX;
  if (ap->rxconfig & ANEG_CFG_HD)
   ap->flags |= MR_LP_ADV_HALF_DUPLEX;
  if (ap->rxconfig & ANEG_CFG_PS1)
   ap->flags |= MR_LP_ADV_SYM_PAUSE;
  if (ap->rxconfig & ANEG_CFG_PS2)
   ap->flags |= MR_LP_ADV_ASYM_PAUSE;
  if (ap->rxconfig & ANEG_CFG_RF1)
   ap->flags |= MR_LP_ADV_REMOTE_FAULT1;
  if (ap->rxconfig & ANEG_CFG_RF2)
   ap->flags |= MR_LP_ADV_REMOTE_FAULT2;
  if (ap->rxconfig & ANEG_CFG_NP)
   ap->flags |= MR_LP_ADV_NEXT_PAGE;

  ap->link_time = ap->cur_time;

  ap->flags ^= (MR_TOGGLE_TX);
  if (ap->rxconfig & 0x0008)
   ap->flags |= MR_TOGGLE_RX;
  if (ap->rxconfig & ANEG_CFG_NP)
   ap->flags |= MR_NP_RX;
  ap->flags |= MR_PAGE_RX;

  ap->state = 138;
  ret = ANEG_TIMER_ENAB;
  break;

 case 138:
  if (ap->ability_match != 0 &&
      ap->rxconfig == 0) {
   ap->state = 139;
   break;
  }
  delta = ap->cur_time - ap->link_time;
  if (delta > ANEG_STATE_SETTLE_TIME) {
   if (!(ap->flags & (MR_LP_ADV_NEXT_PAGE))) {
    ap->state = 134;
   } else {
    if ((ap->txconfig & ANEG_CFG_NP) == 0 &&
        !(ap->flags & MR_NP_RX)) {
     ap->state = 134;
    } else {
     ret = ANEG_FAILED;
    }
   }
  }
  break;

 case 134:
  ap->link_time = ap->cur_time;
  tp->mac_mode &= ~MAC_MODE_SEND_CONFIGS;
  tw32_f(MAC_MODE, tp->mac_mode);
  udelay(40);

  ap->state = 135;
  ret = ANEG_TIMER_ENAB;
  break;

 case 135:
  if (ap->ability_match != 0 &&
      ap->rxconfig == 0) {
   ap->state = 139;
   break;
  }
  delta = ap->cur_time - ap->link_time;
  if (delta > ANEG_STATE_SETTLE_TIME) {

   ap->state = 133;
  }
  break;

 case 133:
  ap->flags |= (MR_AN_COMPLETE | MR_LINK_OK);
  ret = ANEG_DONE;
  break;

 case 131:

  break;

 case 132:

  break;

 default:
  ret = ANEG_FAILED;
  break;
 }

 return ret;
}
