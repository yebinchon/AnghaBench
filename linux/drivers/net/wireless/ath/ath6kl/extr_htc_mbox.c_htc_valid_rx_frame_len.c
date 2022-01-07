
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htc_target {TYPE_2__* dev; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
struct TYPE_4__ {TYPE_1__* ar; } ;
struct TYPE_3__ {int ctrl_ep; } ;


 int ATH6KL_AMSDU_BUFFER_SIZE ;
 int ATH6KL_BUFFER_SIZE ;

__attribute__((used)) static inline bool htc_valid_rx_frame_len(struct htc_target *target,
       enum htc_endpoint_id eid, int len)
{
 return (eid == target->dev->ar->ctrl_ep) ?
  len <= ATH6KL_BUFFER_SIZE : len <= ATH6KL_AMSDU_BUFFER_SIZE;
}
