
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ravb_ptp_perout {int target; scalar_t__ period; } ;
struct TYPE_2__ {struct ravb_ptp_perout* perout; int clock; } ;
struct ravb_private {TYPE_1__ ptp; } ;
struct ptp_clock_event {int timestamp; scalar_t__ index; int type; } ;
struct net_device {int dummy; } ;


 int GCPT ;
 int GIC ;
 int GIS ;
 int GIS_PTCF ;
 int GIS_PTMF ;
 int GIS_RESERVED ;
 int PTP_CLOCK_EXTTS ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ptp_clock_event (int ,struct ptp_clock_event*) ;
 int ravb_ptp_update_compare (struct ravb_private*,int ) ;
 int ravb_read (struct net_device*,int ) ;
 int ravb_write (struct net_device*,int,int ) ;

void ravb_ptp_interrupt(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 u32 gis = ravb_read(ndev, GIS);

 gis &= ravb_read(ndev, GIC);
 if (gis & GIS_PTCF) {
  struct ptp_clock_event event;

  event.type = PTP_CLOCK_EXTTS;
  event.index = 0;
  event.timestamp = ravb_read(ndev, GCPT);
  ptp_clock_event(priv->ptp.clock, &event);
 }
 if (gis & GIS_PTMF) {
  struct ravb_ptp_perout *perout = priv->ptp.perout;

  if (perout->period) {
   perout->target += perout->period;
   ravb_ptp_update_compare(priv, perout->target);
  }
 }

 ravb_write(ndev, ~(gis | GIS_RESERVED), GIS);
}
