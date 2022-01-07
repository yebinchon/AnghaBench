
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int ena_dev; int flags; } ;
typedef int irqreturn_t ;


 int ENA_FLAG_DEVICE_RUNNING ;
 int IRQ_HANDLED ;
 int ena_com_admin_q_comp_intr_handler (int ) ;
 int ena_com_aenq_intr_handler (int ,void*) ;
 scalar_t__ likely (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t ena_intr_msix_mgmnt(int irq, void *data)
{
 struct ena_adapter *adapter = (struct ena_adapter *)data;

 ena_com_admin_q_comp_intr_handler(adapter->ena_dev);


 if (likely(test_bit(ENA_FLAG_DEVICE_RUNNING, &adapter->flags)))
  ena_com_aenq_intr_handler(adapter->ena_dev, data);

 return IRQ_HANDLED;
}
