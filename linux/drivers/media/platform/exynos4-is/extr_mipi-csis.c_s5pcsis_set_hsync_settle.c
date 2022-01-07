
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csis_state {int dummy; } ;


 int S5PCSIS_DPHYCTRL ;
 int S5PCSIS_DPHYCTRL_HSS_MASK ;
 int s5pcsis_read (struct csis_state*,int ) ;
 int s5pcsis_write (struct csis_state*,int ,int) ;

__attribute__((used)) static void s5pcsis_set_hsync_settle(struct csis_state *state, int settle)
{
 u32 val = s5pcsis_read(state, S5PCSIS_DPHYCTRL);

 val = (val & ~S5PCSIS_DPHYCTRL_HSS_MASK) | (settle << 27);
 s5pcsis_write(state, S5PCSIS_DPHYCTRL, val);
}
