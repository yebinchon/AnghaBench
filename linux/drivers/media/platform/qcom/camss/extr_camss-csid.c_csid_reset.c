
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csid_device {TYPE_1__* camss; int reset_complete; scalar_t__ base; } ;
struct TYPE_2__ {int dev; int version; } ;


 scalar_t__ CAMSS_CSID_RST_CMD (int ) ;
 int CSID_RESET_TIMEOUT_MS ;
 int EIO ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int csid_reset(struct csid_device *csid)
{
 unsigned long time;

 reinit_completion(&csid->reset_complete);

 writel_relaxed(0x7fff, csid->base +
         CAMSS_CSID_RST_CMD(csid->camss->version));

 time = wait_for_completion_timeout(&csid->reset_complete,
  msecs_to_jiffies(CSID_RESET_TIMEOUT_MS));
 if (!time) {
  dev_err(csid->camss->dev, "CSID reset timeout\n");
  return -EIO;
 }

 return 0;
}
