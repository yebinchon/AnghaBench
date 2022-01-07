
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {int* init_1x93_tab; } ;


 int msleep (int) ;
 int ves1x93_writereg (struct ves1x93_state*,int ,int) ;

__attribute__((used)) static int ves1x93_clr_bit (struct ves1x93_state* state)
{
 msleep(10);
 ves1x93_writereg (state, 0, state->init_1x93_tab[0] & 0xfe);
 ves1x93_writereg (state, 0, state->init_1x93_tab[0]);
 msleep(50);
 return 0;
}
