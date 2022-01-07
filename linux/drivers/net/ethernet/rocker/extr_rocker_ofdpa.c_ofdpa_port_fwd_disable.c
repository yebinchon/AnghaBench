
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int dummy; } ;


 int BR_STATE_DISABLED ;
 scalar_t__ ofdpa_port_is_bridged (struct ofdpa_port*) ;
 int ofdpa_port_stp_update (struct ofdpa_port*,int,int ) ;

__attribute__((used)) static int ofdpa_port_fwd_disable(struct ofdpa_port *ofdpa_port, int flags)
{
 if (ofdpa_port_is_bridged(ofdpa_port))

  return 0;


 return ofdpa_port_stp_update(ofdpa_port, flags,
         BR_STATE_DISABLED);
}
