
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ddb {int i2c_irq; } ;


 int IRQ_HANDLE_NIBBLE (int ) ;

__attribute__((used)) static void irq_handle_msg(struct ddb *dev, u32 s)
{
 dev->i2c_irq++;
 IRQ_HANDLE_NIBBLE(0);
}
