
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {scalar_t__ reg; } ;


 scalar_t__ INTR_STATUS (int) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void denali_clear_irq(struct denali_controller *denali,
        int bank, u32 irq_status)
{

 iowrite32(irq_status, denali->reg + INTR_STATUS(bank));
}
