
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct switchdev_trans {int dummy; } ;
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {scalar_t__ ageing_time; struct ofdpa* ofdpa; } ;
struct ofdpa {scalar_t__ ageing_time; int fdb_cleanup_timer; } ;


 scalar_t__ clock_t_to_jiffies (int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int
ofdpa_port_attr_bridge_ageing_time_set(struct rocker_port *rocker_port,
           u32 ageing_time,
           struct switchdev_trans *trans)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;

 if (!switchdev_trans_ph_prepare(trans)) {
  ofdpa_port->ageing_time = clock_t_to_jiffies(ageing_time);
  if (ofdpa_port->ageing_time < ofdpa->ageing_time)
   ofdpa->ageing_time = ofdpa_port->ageing_time;
  mod_timer(&ofdpa_port->ofdpa->fdb_cleanup_timer, jiffies);
 }

 return 0;
}
