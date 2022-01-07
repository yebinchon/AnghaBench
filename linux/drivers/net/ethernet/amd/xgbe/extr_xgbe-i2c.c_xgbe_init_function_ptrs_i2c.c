
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_i2c_if {int i2c_isr; int i2c_xfer; int i2c_stop; int i2c_start; int i2c_init; } ;


 int xgbe_i2c_combined_isr ;
 int xgbe_i2c_init ;
 int xgbe_i2c_start ;
 int xgbe_i2c_stop ;
 int xgbe_i2c_xfer ;

void xgbe_init_function_ptrs_i2c(struct xgbe_i2c_if *i2c_if)
{
 i2c_if->i2c_init = xgbe_i2c_init;

 i2c_if->i2c_start = xgbe_i2c_start;
 i2c_if->i2c_stop = xgbe_i2c_stop;

 i2c_if->i2c_xfer = xgbe_i2c_xfer;

 i2c_if->i2c_isr = xgbe_i2c_combined_isr;
}
