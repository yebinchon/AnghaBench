
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ptp_qoriq {int clock; struct device* dev; } ;
struct ptp_clock_event {int type; } ;
struct fsl_mc_device {int mc_handle; int mc_io; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int DPRTC_EVENT_PPS ;
 int DPRTC_IRQ_INDEX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PTP_CLOCK_PPS ;
 int dev_err (struct device*,char*,int) ;
 int dprtc_clear_irq_status (int ,int ,int ,int ,int) ;
 int dprtc_get_irq_status (int ,int ,int ,int ,int*) ;
 int ptp_clock_event (int ,struct ptp_clock_event*) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t dpaa2_ptp_irq_handler_thread(int irq, void *priv)
{
 struct ptp_qoriq *ptp_qoriq = priv;
 struct ptp_clock_event event;
 struct fsl_mc_device *mc_dev;
 struct device *dev;
 u32 status = 0;
 int err;

 dev = ptp_qoriq->dev;
 mc_dev = to_fsl_mc_device(dev);

 err = dprtc_get_irq_status(mc_dev->mc_io, 0, mc_dev->mc_handle,
       DPRTC_IRQ_INDEX, &status);
 if (unlikely(err)) {
  dev_err(dev, "dprtc_get_irq_status err %d\n", err);
  return IRQ_NONE;
 }

 if (status & DPRTC_EVENT_PPS) {
  event.type = PTP_CLOCK_PPS;
  ptp_clock_event(ptp_qoriq->clock, &event);
 }

 err = dprtc_clear_irq_status(mc_dev->mc_io, 0, mc_dev->mc_handle,
         DPRTC_IRQ_INDEX, status);
 if (unlikely(err)) {
  dev_err(dev, "dprtc_clear_irq_status err %d\n", err);
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
