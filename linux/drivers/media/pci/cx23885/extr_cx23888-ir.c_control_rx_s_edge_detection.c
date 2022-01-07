
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int CNTRL_EDG_BOTH ;
 int CX23888_IR_CNTRL_REG ;
 int cx23888_ir_and_or4 (struct cx23885_dev*,int ,int,int) ;

__attribute__((used)) static inline void control_rx_s_edge_detection(struct cx23885_dev *dev,
            u32 edge_types)
{
 cx23888_ir_and_or4(dev, CX23888_IR_CNTRL_REG, ~CNTRL_EDG_BOTH,
      edge_types & CNTRL_EDG_BOTH);
}
