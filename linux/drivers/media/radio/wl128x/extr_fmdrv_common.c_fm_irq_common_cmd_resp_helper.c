
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct fmdev {int dummy; } ;


 int check_cmdresp_status (struct fmdev*,struct sk_buff**) ;
 int fm_irq_call_stage (struct fmdev*,int ) ;

__attribute__((used)) static inline void fm_irq_common_cmd_resp_helper(struct fmdev *fmdev, u8 stage)
{
 struct sk_buff *skb;

 if (!check_cmdresp_status(fmdev, &skb))
  fm_irq_call_stage(fmdev, stage);
}
