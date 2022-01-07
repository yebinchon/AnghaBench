
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int link; int an_complete; int duplex; int pause; int speed; } ;
struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int EINVAL ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int MT7530_NUM_PORTS ;
 int MT7530_PMSR_P (int) ;
 int PMSR_DPX ;
 int PMSR_LINK ;
 int PMSR_RX_FC ;



 int PMSR_SPEED_MASK ;
 int PMSR_TX_FC ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_UNKNOWN ;
 int mt7530_read (struct mt7530_priv*,int ) ;

__attribute__((used)) static int
mt7530_phylink_mac_link_state(struct dsa_switch *ds, int port,
         struct phylink_link_state *state)
{
 struct mt7530_priv *priv = ds->priv;
 u32 pmsr;

 if (port < 0 || port >= MT7530_NUM_PORTS)
  return -EINVAL;

 pmsr = mt7530_read(priv, MT7530_PMSR_P(port));

 state->link = (pmsr & PMSR_LINK);
 state->an_complete = state->link;
 state->duplex = !!(pmsr & PMSR_DPX);

 switch (pmsr & PMSR_SPEED_MASK) {
 case 130:
  state->speed = SPEED_10;
  break;
 case 129:
  state->speed = SPEED_100;
  break;
 case 128:
  state->speed = SPEED_1000;
  break;
 default:
  state->speed = SPEED_UNKNOWN;
  break;
 }

 state->pause &= ~(MLO_PAUSE_RX | MLO_PAUSE_TX);
 if (pmsr & PMSR_RX_FC)
  state->pause |= MLO_PAUSE_RX;
 if (pmsr & PMSR_TX_FC)
  state->pause |= MLO_PAUSE_TX;

 return 1;
}
