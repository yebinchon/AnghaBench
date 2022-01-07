
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int sbm_state; } ;
typedef enum sbmac_state { ____Placeholder_sbmac_state } sbmac_state ;


 int sbmac_channel_start (struct sbmac_softc*) ;
 int sbmac_channel_stop (struct sbmac_softc*) ;
 int sbmac_state_on ;

__attribute__((used)) static enum sbmac_state sbmac_set_channel_state(struct sbmac_softc *sc,
      enum sbmac_state state)
{
 enum sbmac_state oldstate = sc->sbm_state;





 if (state == oldstate) {
  return oldstate;
 }





 if (state == sbmac_state_on) {
  sbmac_channel_start(sc);
 }
 else {
  sbmac_channel_stop(sc);
 }





 return oldstate;
}
