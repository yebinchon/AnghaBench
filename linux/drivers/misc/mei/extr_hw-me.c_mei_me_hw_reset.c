
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct mei_device {int recvd_hw_ready; int dev; } ;


 int H_CSR_IE_MASK ;
 int H_CSR_IS_MASK ;
 int H_IG ;
 int H_RDY ;
 int H_RST ;
 int dev_warn (int ,char*,int) ;
 int mei_hcsr_read (struct mei_device*) ;
 int mei_hcsr_set (struct mei_device*,int) ;
 int mei_hcsr_write (struct mei_device*,int) ;
 int mei_me_d0i3_enter (struct mei_device*) ;
 int mei_me_d0i3_exit_sync (struct mei_device*) ;
 int mei_me_hw_reset_release (struct mei_device*) ;
 int mei_me_intr_enable (struct mei_device*) ;
 int pm_runtime_set_active (int ) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;

__attribute__((used)) static int mei_me_hw_reset(struct mei_device *dev, bool intr_enable)
{
 struct mei_me_hw *hw = to_me_hw(dev);
 int ret;
 u32 hcsr;

 if (intr_enable) {
  mei_me_intr_enable(dev);
  if (hw->d0i3_supported) {
   ret = mei_me_d0i3_exit_sync(dev);
   if (ret)
    return ret;
  }
 }

 pm_runtime_set_active(dev->dev);

 hcsr = mei_hcsr_read(dev);





 if ((hcsr & H_RST) == H_RST) {
  dev_warn(dev->dev, "H_RST is set = 0x%08X", hcsr);
  hcsr &= ~H_RST;
  mei_hcsr_set(dev, hcsr);
  hcsr = mei_hcsr_read(dev);
 }

 hcsr |= H_RST | H_IG | H_CSR_IS_MASK;

 if (!intr_enable)
  hcsr &= ~H_CSR_IE_MASK;

 dev->recvd_hw_ready = 0;
 mei_hcsr_write(dev, hcsr);





 hcsr = mei_hcsr_read(dev);

 if ((hcsr & H_RST) == 0)
  dev_warn(dev->dev, "H_RST is not set = 0x%08X", hcsr);

 if ((hcsr & H_RDY) == H_RDY)
  dev_warn(dev->dev, "H_RDY is not cleared 0x%08X", hcsr);

 if (!intr_enable) {
  mei_me_hw_reset_release(dev);
  if (hw->d0i3_supported) {
   ret = mei_me_d0i3_enter(dev);
   if (ret)
    return ret;
  }
 }
 return 0;
}
