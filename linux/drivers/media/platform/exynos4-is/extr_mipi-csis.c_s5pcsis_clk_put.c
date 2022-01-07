
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csis_state {int * clock; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_CSIS_CLOCKS ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;

__attribute__((used)) static void s5pcsis_clk_put(struct csis_state *state)
{
 int i;

 for (i = 0; i < NUM_CSIS_CLOCKS; i++) {
  if (IS_ERR(state->clock[i]))
   continue;
  clk_unprepare(state->clock[i]);
  clk_put(state->clock[i]);
  state->clock[i] = ERR_PTR(-EINVAL);
 }
}
