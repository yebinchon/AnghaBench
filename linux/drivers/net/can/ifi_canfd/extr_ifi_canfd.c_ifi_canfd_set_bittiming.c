
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct can_bittiming {int brp; int sjw; int prop_seg; int phase_seg1; int phase_seg2; } ;
struct TYPE_2__ {struct can_bittiming data_bittiming; struct can_bittiming bittiming; } ;
struct ifi_canfd_priv {scalar_t__ base; TYPE_1__ can; } ;


 scalar_t__ IFI_CANFD_FTIME ;
 scalar_t__ IFI_CANFD_TDELAY ;
 int IFI_CANFD_TDELAY_EN ;
 int IFI_CANFD_TDELAY_MASK ;
 scalar_t__ IFI_CANFD_TIME ;
 int IFI_CANFD_TIME_PRESCALE_OFF ;
 int IFI_CANFD_TIME_SJW_OFF_7_9_8_8 ;
 int IFI_CANFD_TIME_TIMEA_OFF ;
 int IFI_CANFD_TIME_TIMEB_OFF ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ifi_canfd_set_bittiming(struct net_device *ndev)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);
 const struct can_bittiming *bt = &priv->can.bittiming;
 const struct can_bittiming *dbt = &priv->can.data_bittiming;
 u16 brp, sjw, tseg1, tseg2, tdc;


 brp = bt->brp - 2;
 sjw = bt->sjw - 1;
 tseg1 = bt->prop_seg + bt->phase_seg1 - 1;
 tseg2 = bt->phase_seg2 - 2;
 writel((tseg2 << IFI_CANFD_TIME_TIMEB_OFF) |
        (tseg1 << IFI_CANFD_TIME_TIMEA_OFF) |
        (brp << IFI_CANFD_TIME_PRESCALE_OFF) |
        (sjw << IFI_CANFD_TIME_SJW_OFF_7_9_8_8),
        priv->base + IFI_CANFD_TIME);


 brp = dbt->brp - 2;
 sjw = dbt->sjw - 1;
 tseg1 = dbt->prop_seg + dbt->phase_seg1 - 1;
 tseg2 = dbt->phase_seg2 - 2;
 writel((tseg2 << IFI_CANFD_TIME_TIMEB_OFF) |
        (tseg1 << IFI_CANFD_TIME_TIMEA_OFF) |
        (brp << IFI_CANFD_TIME_PRESCALE_OFF) |
        (sjw << IFI_CANFD_TIME_SJW_OFF_7_9_8_8),
        priv->base + IFI_CANFD_FTIME);


 tdc = dbt->brp * (dbt->prop_seg + dbt->phase_seg1);
 tdc &= IFI_CANFD_TDELAY_MASK;
 writel(IFI_CANFD_TDELAY_EN | tdc, priv->base + IFI_CANFD_TDELAY);
}
