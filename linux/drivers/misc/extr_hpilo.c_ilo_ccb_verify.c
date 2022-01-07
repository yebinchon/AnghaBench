
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ilo_hwinfo {TYPE_1__* ilo_dev; } ;
struct ccb {int dummy; } ;
struct ccb_data {struct ccb driver_ccb; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int MAX_WAIT ;
 int SENDQ ;
 int WAIT_TIME ;
 int dev_err (int *,char*) ;
 int doorbell_set (struct ccb*) ;
 scalar_t__ ilo_pkt_dequeue (struct ilo_hwinfo*,struct ccb*,int ,int*,int *,int *) ;
 int ilo_pkt_enqueue (struct ilo_hwinfo*,struct ccb*,int ,int,int ) ;
 int udelay (int ) ;

__attribute__((used)) static int ilo_ccb_verify(struct ilo_hwinfo *hw, struct ccb_data *data)
{
 int pkt_id, i;
 struct ccb *driver_ccb = &data->driver_ccb;


 for (i = MAX_WAIT; i > 0; i--) {
  if (ilo_pkt_dequeue(hw, driver_ccb, SENDQ, &pkt_id, ((void*)0), ((void*)0)))
   break;
  udelay(WAIT_TIME);
 }

 if (i == 0) {
  dev_err(&hw->ilo_dev->dev, "Open could not dequeue a packet\n");
  return -EBUSY;
 }

 ilo_pkt_enqueue(hw, driver_ccb, SENDQ, pkt_id, 0);
 doorbell_set(driver_ccb);
 return 0;
}
