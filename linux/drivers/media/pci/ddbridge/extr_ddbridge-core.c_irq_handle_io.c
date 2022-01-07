
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ddb {int ts_irq; } ;


 int IRQ_HANDLE_BYTE (int) ;
 int IRQ_HANDLE_NIBBLE (int) ;

__attribute__((used)) static void irq_handle_io(struct ddb *dev, u32 s)
{
 dev->ts_irq++;
 IRQ_HANDLE_NIBBLE(4);
 IRQ_HANDLE_BYTE(8);
 IRQ_HANDLE_BYTE(16);
 IRQ_HANDLE_BYTE(24);
}
