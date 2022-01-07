
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csis_state {int dummy; } ;


 int S5PCSIS_CTRL ;
 int S5PCSIS_CTRL_RESET ;
 int s5pcsis_read (struct csis_state*,int ) ;
 int s5pcsis_write (struct csis_state*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void s5pcsis_reset(struct csis_state *state)
{
 u32 val = s5pcsis_read(state, S5PCSIS_CTRL);

 s5pcsis_write(state, S5PCSIS_CTRL, val | S5PCSIS_CTRL_RESET);
 udelay(10);
}
