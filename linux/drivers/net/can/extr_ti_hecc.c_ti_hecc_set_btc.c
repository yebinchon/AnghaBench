
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct can_bittiming {int phase_seg2; int phase_seg1; int prop_seg; int brp; int sjw; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct ti_hecc_priv {int ndev; TYPE_1__ can; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int HECC_CANBTC ;
 int HECC_CANBTC_SAM ;
 int hecc_write (struct ti_hecc_priv*,int ,int) ;
 int netdev_info (int ,char*,int) ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static int ti_hecc_set_btc(struct ti_hecc_priv *priv)
{
 struct can_bittiming *bit_timing = &priv->can.bittiming;
 u32 can_btc;

 can_btc = (bit_timing->phase_seg2 - 1) & 0x7;
 can_btc |= ((bit_timing->phase_seg1 + bit_timing->prop_seg - 1)
   & 0xF) << 3;
 if (priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES) {
  if (bit_timing->brp > 4)
   can_btc |= HECC_CANBTC_SAM;
  else
   netdev_warn(priv->ndev,
        "WARN: Triple sampling not set due to h/w limitations");
 }
 can_btc |= ((bit_timing->sjw - 1) & 0x3) << 8;
 can_btc |= ((bit_timing->brp - 1) & 0xFF) << 16;



 hecc_write(priv, HECC_CANBTC, can_btc);
 netdev_info(priv->ndev, "setting CANBTC=%#x\n", can_btc);

 return 0;
}
