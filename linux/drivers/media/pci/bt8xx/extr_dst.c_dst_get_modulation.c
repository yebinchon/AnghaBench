
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int modulation; } ;
typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;



__attribute__((used)) static enum fe_modulation dst_get_modulation(struct dst_state *state)
{
 return state->modulation;
}
