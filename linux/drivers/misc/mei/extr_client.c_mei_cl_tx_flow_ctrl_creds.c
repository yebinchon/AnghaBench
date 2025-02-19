
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_cl {scalar_t__ tx_flow_ctrl_creds; TYPE_1__* me_cl; } ;
struct TYPE_2__ {scalar_t__ tx_flow_ctrl_creds; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ mei_cl_is_fixed_address (struct mei_cl*) ;
 scalar_t__ mei_cl_is_single_recv_buf (struct mei_cl*) ;

__attribute__((used)) static int mei_cl_tx_flow_ctrl_creds(struct mei_cl *cl)
{
 if (WARN_ON(!cl || !cl->me_cl))
  return -EINVAL;

 if (cl->tx_flow_ctrl_creds > 0)
  return 1;

 if (mei_cl_is_fixed_address(cl))
  return 1;

 if (mei_cl_is_single_recv_buf(cl)) {
  if (cl->me_cl->tx_flow_ctrl_creds > 0)
   return 1;
 }
 return 0;
}
