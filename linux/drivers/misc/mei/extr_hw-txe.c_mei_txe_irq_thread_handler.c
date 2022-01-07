
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int aliveness; int slots; int intr_cause; int wait_aliveness_resp; int readiness; } ;
struct mei_device {int recvd_hw_ready; scalar_t__ dev_state; int hbuf_is_ready; int device_lock; int dev; int reset_work; int pg_event; int wait_hw_ready; } ;
struct list_head {int dummy; } ;
typedef int s32 ;
typedef int irqreturn_t ;


 int EMSGSIZE ;
 int HHISR_REG ;
 int HISR_REG ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int IRQ_HANDLED ;
 scalar_t__ MEI_DEV_POWER_DOWN ;
 scalar_t__ MEI_DEV_RESETTING ;
 int MEI_PG_EVENT_RECEIVED ;
 int SEC_IPC_HOST_INT_STATUS_REG ;
 int TXE_HBUF_DEPTH ;
 int TXE_INTR_ALIVENESS_BIT ;
 int TXE_INTR_IN_READY_BIT ;
 int TXE_INTR_OUT_DB_BIT ;
 int TXE_INTR_READINESS_BIT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int mei_count_full_read_slots (struct mei_device*) ;
 int mei_enable_interrupts (struct mei_device*) ;
 void* mei_hbuf_is_ready (struct mei_device*) ;
 int mei_irq_compl_handler (struct mei_device*,struct list_head*) ;
 int mei_irq_read_handler (struct mei_device*,struct list_head*,int *) ;
 int mei_irq_write_handler (struct mei_device*,struct list_head*) ;
 int mei_txe_aliveness_get (struct mei_device*) ;
 int mei_txe_br_reg_read (struct mei_txe_hw*,int ) ;
 int mei_txe_check_and_ack_intrs (struct mei_device*,int) ;
 int mei_txe_pending_interrupts (struct mei_device*) ;
 int mei_txe_readiness_get (struct mei_device*) ;
 scalar_t__ mei_txe_readiness_is_sec_rdy (int ) ;
 int mei_txe_sec_reg_read_silent (struct mei_txe_hw*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_dev_msi_enabled (int ) ;
 int schedule_work (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int to_pci_dev (int ) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

irqreturn_t mei_txe_irq_thread_handler(int irq, void *dev_id)
{
 struct mei_device *dev = (struct mei_device *) dev_id;
 struct mei_txe_hw *hw = to_txe_hw(dev);
 struct list_head cmpl_list;
 s32 slots;
 int rets = 0;

 dev_dbg(dev->dev, "irq thread: Interrupt Registers HHISR|HISR|SEC=%02X|%04X|%02X\n",
  mei_txe_br_reg_read(hw, HHISR_REG),
  mei_txe_br_reg_read(hw, HISR_REG),
  mei_txe_sec_reg_read_silent(hw, SEC_IPC_HOST_INT_STATUS_REG));



 mutex_lock(&dev->device_lock);
 INIT_LIST_HEAD(&cmpl_list);

 if (pci_dev_msi_enabled(to_pci_dev(dev->dev)))
  mei_txe_check_and_ack_intrs(dev, 1);


 mei_txe_pending_interrupts(dev);

 hw->aliveness = mei_txe_aliveness_get(dev);
 hw->readiness = mei_txe_readiness_get(dev);





 if (test_and_clear_bit(TXE_INTR_READINESS_BIT, &hw->intr_cause)) {
  dev_dbg(dev->dev, "Readiness Interrupt was received...\n");


  if (mei_txe_readiness_is_sec_rdy(hw->readiness)) {
   dev_dbg(dev->dev, "we need to start the dev.\n");
   dev->recvd_hw_ready = 1;
  } else {
   dev->recvd_hw_ready = 0;
   if (dev->dev_state != MEI_DEV_RESETTING) {

    dev_warn(dev->dev, "FW not ready: resetting.\n");
    schedule_work(&dev->reset_work);
    goto end;

   }
  }
  wake_up(&dev->wait_hw_ready);
 }







 if (test_and_clear_bit(TXE_INTR_ALIVENESS_BIT, &hw->intr_cause)) {

  dev_dbg(dev->dev,
   "Aliveness Interrupt: Status: %d\n", hw->aliveness);
  dev->pg_event = MEI_PG_EVENT_RECEIVED;
  if (waitqueue_active(&hw->wait_aliveness_resp))
   wake_up(&hw->wait_aliveness_resp);
 }





 slots = mei_count_full_read_slots(dev);
 if (test_and_clear_bit(TXE_INTR_OUT_DB_BIT, &hw->intr_cause)) {

  rets = mei_irq_read_handler(dev, &cmpl_list, &slots);
  if (rets &&
      (dev->dev_state != MEI_DEV_RESETTING &&
       dev->dev_state != MEI_DEV_POWER_DOWN)) {
   dev_err(dev->dev,
    "mei_irq_read_handler ret = %d.\n", rets);

   schedule_work(&dev->reset_work);
   goto end;
  }
 }

 if (test_and_clear_bit(TXE_INTR_IN_READY_BIT, &hw->intr_cause)) {
  dev->hbuf_is_ready = 1;
  hw->slots = TXE_HBUF_DEPTH;
 }

 if (hw->aliveness && dev->hbuf_is_ready) {

  dev->hbuf_is_ready = mei_hbuf_is_ready(dev);
  rets = mei_irq_write_handler(dev, &cmpl_list);
  if (rets && rets != -EMSGSIZE)
   dev_err(dev->dev, "mei_irq_write_handler ret = %d.\n",
    rets);
  dev->hbuf_is_ready = mei_hbuf_is_ready(dev);
 }

 mei_irq_compl_handler(dev, &cmpl_list);

end:
 dev_dbg(dev->dev, "interrupt thread end ret = %d\n", rets);

 mutex_unlock(&dev->device_lock);

 mei_enable_interrupts(dev);
 return IRQ_HANDLED;
}
