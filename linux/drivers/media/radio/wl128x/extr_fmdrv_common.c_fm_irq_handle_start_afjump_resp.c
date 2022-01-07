
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int stage; } ;
struct fmdev {int flag; TYPE_1__ irq_info; } ;


 int FM_AF_SWITCH_INPROGRESS ;
 int FM_INTTASK_RUNNING ;
 int FM_SEND_FLAG_GETCMD_IDX ;
 scalar_t__ check_cmdresp_status (struct fmdev*,struct sk_buff**) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void fm_irq_handle_start_afjump_resp(struct fmdev *fmdev)
{
 struct sk_buff *skb;

 if (check_cmdresp_status(fmdev, &skb))
  return;

 fmdev->irq_info.stage = FM_SEND_FLAG_GETCMD_IDX;
 set_bit(FM_AF_SWITCH_INPROGRESS, &fmdev->flag);
 clear_bit(FM_INTTASK_RUNNING, &fmdev->flag);
}
