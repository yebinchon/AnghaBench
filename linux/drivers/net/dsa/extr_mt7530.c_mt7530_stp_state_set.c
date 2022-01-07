
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;







 int FID_PST_MASK ;
 int MT7530_SSP_P (int) ;
 int MT7530_STP_BLOCKING ;
 int MT7530_STP_DISABLED ;
 int MT7530_STP_FORWARDING ;
 int MT7530_STP_LEARNING ;
 int MT7530_STP_LISTENING ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;

__attribute__((used)) static void
mt7530_stp_state_set(struct dsa_switch *ds, int port, u8 state)
{
 struct mt7530_priv *priv = ds->priv;
 u32 stp_state;

 switch (state) {
 case 131:
  stp_state = MT7530_STP_DISABLED;
  break;
 case 132:
  stp_state = MT7530_STP_BLOCKING;
  break;
 case 128:
  stp_state = MT7530_STP_LISTENING;
  break;
 case 129:
  stp_state = MT7530_STP_LEARNING;
  break;
 case 130:
 default:
  stp_state = MT7530_STP_FORWARDING;
  break;
 }

 mt7530_rmw(priv, MT7530_SSP_P(port), FID_PST_MASK, stp_state);
}
