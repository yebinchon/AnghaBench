
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda1997x_state {int supplies; } ;


 int TDA1997X_NUM_SUPPLIES ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int tda1997x_set_power(struct tda1997x_state *state, bool on)
{
 int ret = 0;

 if (on) {
  ret = regulator_bulk_enable(TDA1997X_NUM_SUPPLIES,
          state->supplies);
  msleep(300);
 } else {
  ret = regulator_bulk_disable(TDA1997X_NUM_SUPPLIES,
          state->supplies);
 }

 return ret;
}
