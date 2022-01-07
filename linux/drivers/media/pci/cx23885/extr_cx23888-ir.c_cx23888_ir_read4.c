
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int cx_read (int ) ;

__attribute__((used)) static inline u32 cx23888_ir_read4(struct cx23885_dev *dev, u32 addr)
{
 return cx_read(addr);
}
