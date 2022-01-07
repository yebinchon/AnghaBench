
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {unsigned int states; } ;



unsigned int mux_control_states(struct mux_control *mux)
{
 return mux->states;
}
