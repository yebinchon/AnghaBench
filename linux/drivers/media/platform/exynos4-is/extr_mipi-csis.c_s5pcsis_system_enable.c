
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csis_state {int num_lanes; } ;


 int S5PCSIS_CTRL ;
 int S5PCSIS_CTRL_ENABLE ;
 int S5PCSIS_DPHYCTRL ;
 int S5PCSIS_DPHYCTRL_ENABLE ;
 int s5pcsis_read (struct csis_state*,int ) ;
 int s5pcsis_write (struct csis_state*,int ,int) ;

__attribute__((used)) static void s5pcsis_system_enable(struct csis_state *state, int on)
{
 u32 val, mask;

 val = s5pcsis_read(state, S5PCSIS_CTRL);
 if (on)
  val |= S5PCSIS_CTRL_ENABLE;
 else
  val &= ~S5PCSIS_CTRL_ENABLE;
 s5pcsis_write(state, S5PCSIS_CTRL, val);

 val = s5pcsis_read(state, S5PCSIS_DPHYCTRL);
 val &= ~S5PCSIS_DPHYCTRL_ENABLE;
 if (on) {
  mask = (1 << (state->num_lanes + 1)) - 1;
  val |= (mask & S5PCSIS_DPHYCTRL_ENABLE);
 }
 s5pcsis_write(state, S5PCSIS_DPHYCTRL, val);
}
