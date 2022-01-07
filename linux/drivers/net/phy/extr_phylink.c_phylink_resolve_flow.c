
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phylink_link_state {int pause; } ;
struct TYPE_2__ {int pause; int advertising; } ;
struct phylink {TYPE_1__ link_config; } ;


 int Asym_Pause ;
 int MLO_PAUSE_AN ;
 int MLO_PAUSE_ASYM ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_SYM ;
 int MLO_PAUSE_TX ;
 int MLO_PAUSE_TXRX_MASK ;
 int Pause ;
 scalar_t__ phylink_test (int ,int ) ;

__attribute__((used)) static void phylink_resolve_flow(struct phylink *pl,
     struct phylink_link_state *state)
{
 int new_pause = 0;

 if (pl->link_config.pause & MLO_PAUSE_AN) {
  int pause = 0;

  if (phylink_test(pl->link_config.advertising, Pause))
   pause |= MLO_PAUSE_SYM;
  if (phylink_test(pl->link_config.advertising, Asym_Pause))
   pause |= MLO_PAUSE_ASYM;

  pause &= state->pause;

  if (pause & MLO_PAUSE_SYM)
   new_pause = MLO_PAUSE_TX | MLO_PAUSE_RX;
  else if (pause & MLO_PAUSE_ASYM)
   new_pause = state->pause & MLO_PAUSE_SYM ?
     MLO_PAUSE_TX : MLO_PAUSE_RX;
 } else {
  new_pause = pl->link_config.pause & MLO_PAUSE_TXRX_MASK;
 }

 state->pause &= ~MLO_PAUSE_TXRX_MASK;
 state->pause |= new_pause;
}
