
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcan_usb_msg_context {scalar_t__ end; scalar_t__ rec_idx; int ts16; TYPE_1__* pdev; int ptr; } ;
typedef int __le16 ;
struct TYPE_2__ {int time_ref; } ;


 int EINVAL ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int peak_usb_set_ts_now (int *,int ) ;
 int peak_usb_update_ts_now (int *,int ) ;

__attribute__((used)) static int pcan_usb_update_ts(struct pcan_usb_msg_context *mc)
{
 __le16 tmp16;

 if ((mc->ptr+2) > mc->end)
  return -EINVAL;

 memcpy(&tmp16, mc->ptr, 2);

 mc->ts16 = le16_to_cpu(tmp16);

 if (mc->rec_idx > 0)
  peak_usb_update_ts_now(&mc->pdev->time_ref, mc->ts16);
 else
  peak_usb_set_ts_now(&mc->pdev->time_ref, mc->ts16);

 return 0;
}
