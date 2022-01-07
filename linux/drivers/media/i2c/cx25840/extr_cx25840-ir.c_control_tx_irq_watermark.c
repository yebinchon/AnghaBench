
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef enum tx_fifo_watermark { ____Placeholder_tx_fifo_watermark } tx_fifo_watermark ;


 int CNTRL_TIC ;
 int CX25840_IR_CNTRL_REG ;
 int cx25840_and_or4 (struct i2c_client*,int ,int ,int) ;

__attribute__((used)) static inline void control_tx_irq_watermark(struct i2c_client *c,
         enum tx_fifo_watermark level)
{
 cx25840_and_or4(c, CX25840_IR_CNTRL_REG, ~CNTRL_TIC, level);
}
