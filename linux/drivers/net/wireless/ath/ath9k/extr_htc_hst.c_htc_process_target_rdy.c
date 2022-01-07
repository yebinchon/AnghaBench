
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int target_wait; int tgt_ready; struct htc_endpoint* endpoint; int credit_size; } ;
struct htc_ready_msg {int credit_size; } ;
struct htc_endpoint {int max_msglen; int service_id; } ;


 size_t ENDPOINT0 ;
 int HTC_CTRL_RSVD_SVC ;
 int HTC_MAX_CONTROL_MESSAGE_LENGTH ;
 int atomic_inc (int *) ;
 int be16_to_cpu (int ) ;
 int complete (int *) ;

__attribute__((used)) static void htc_process_target_rdy(struct htc_target *target,
       void *buf)
{
 struct htc_endpoint *endpoint;
 struct htc_ready_msg *htc_ready_msg = (struct htc_ready_msg *) buf;

 target->credit_size = be16_to_cpu(htc_ready_msg->credit_size);

 endpoint = &target->endpoint[ENDPOINT0];
 endpoint->service_id = HTC_CTRL_RSVD_SVC;
 endpoint->max_msglen = HTC_MAX_CONTROL_MESSAGE_LENGTH;
 atomic_inc(&target->tgt_ready);
 complete(&target->target_wait);
}
