
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_rx_mode_obj {int config_rx_mode; int wait_comp; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int bnx2x_empty_rx_mode_wait ;
 int bnx2x_set_rx_mode_e1x ;
 int bnx2x_set_rx_mode_e2 ;
 int bnx2x_wait_rx_mode_comp_e2 ;

void bnx2x_init_rx_mode_obj(struct bnx2x *bp,
       struct bnx2x_rx_mode_obj *o)
{
 if (CHIP_IS_E1x(bp)) {
  o->wait_comp = bnx2x_empty_rx_mode_wait;
  o->config_rx_mode = bnx2x_set_rx_mode_e1x;
 } else {
  o->wait_comp = bnx2x_wait_rx_mode_comp_e2;
  o->config_rx_mode = bnx2x_set_rx_mode_e2;
 }
}
