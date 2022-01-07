
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int voltage; int* tx_tuna; } ;





 int dprintk (int,char*) ;

__attribute__((used)) static int dst_set_polarization(struct dst_state *state)
{
 switch (state->voltage) {
 case 130:
  dprintk(2, "Polarization=[Vertical]\n");
  state->tx_tuna[8] &= ~0x40;
  break;
 case 129:
  dprintk(2, "Polarization=[Horizontal]\n");
  state->tx_tuna[8] |= 0x40;
  break;
 case 128:
  break;
 }

 return 0;
}
