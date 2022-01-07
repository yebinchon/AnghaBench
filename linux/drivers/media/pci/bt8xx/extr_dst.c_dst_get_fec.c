
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int fec; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;



__attribute__((used)) static enum fe_code_rate dst_get_fec(struct dst_state *state)
{
 return state->fec;
}
