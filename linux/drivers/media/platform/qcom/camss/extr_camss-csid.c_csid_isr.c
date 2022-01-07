
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct csid_device {int reset_complete; scalar_t__ base; TYPE_1__* camss; } ;
typedef int irqreturn_t ;
typedef enum camss_version { ____Placeholder_camss_version } camss_version ;
struct TYPE_2__ {int version; } ;


 scalar_t__ CAMSS_CSID_IRQ_CLEAR_CMD (int) ;
 scalar_t__ CAMSS_CSID_IRQ_STATUS (int) ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t csid_isr(int irq, void *dev)
{
 struct csid_device *csid = dev;
 enum camss_version ver = csid->camss->version;
 u32 value;

 value = readl_relaxed(csid->base + CAMSS_CSID_IRQ_STATUS(ver));
 writel_relaxed(value, csid->base + CAMSS_CSID_IRQ_CLEAR_CMD(ver));

 if ((value >> 11) & 0x1)
  complete(&csid->reset_complete);

 return IRQ_HANDLED;
}
