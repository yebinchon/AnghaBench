
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ravb_private {int rx_fifo_errors; TYPE_1__* stats; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rx_over_errors; } ;


 int EIS ;
 int EIS_QFS ;
 int EIS_RESERVED ;
 size_t RAVB_BE ;
 size_t RAVB_NC ;
 int RIS2 ;
 int RIS2_QFF0 ;
 int RIS2_QFF1 ;
 int RIS2_RESERVED ;
 int RIS2_RFFF ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_read (struct net_device*,int ) ;
 int ravb_write (struct net_device*,int,int ) ;

__attribute__((used)) static void ravb_error_interrupt(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 u32 eis, ris2;

 eis = ravb_read(ndev, EIS);
 ravb_write(ndev, ~(EIS_QFS | EIS_RESERVED), EIS);
 if (eis & EIS_QFS) {
  ris2 = ravb_read(ndev, RIS2);
  ravb_write(ndev, ~(RIS2_QFF0 | RIS2_RFFF | RIS2_RESERVED),
      RIS2);


  if (ris2 & RIS2_QFF0)
   priv->stats[RAVB_BE].rx_over_errors++;


  if (ris2 & RIS2_QFF1)
   priv->stats[RAVB_NC].rx_over_errors++;


  if (ris2 & RIS2_RFFF)
   priv->rx_fifo_errors++;
 }
}
