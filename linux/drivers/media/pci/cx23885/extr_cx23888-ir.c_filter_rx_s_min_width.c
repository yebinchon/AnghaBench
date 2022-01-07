
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int CX23888_IR_FILTR_REG ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int ) ;
 int lpf_count_to_ns (int ) ;
 int ns_to_lpf_count (int ) ;

__attribute__((used)) static u32 filter_rx_s_min_width(struct cx23885_dev *dev, u32 min_width_ns)
{
 u32 count = ns_to_lpf_count(min_width_ns);
 cx23888_ir_write4(dev, CX23888_IR_FILTR_REG, count);
 return lpf_count_to_ns(count);
}
