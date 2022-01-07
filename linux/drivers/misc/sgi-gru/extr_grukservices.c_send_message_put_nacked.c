
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_message_queue_desc {int mq_gpa; int interrupt_vector; } ;


 scalar_t__ CBS_IDLE ;
 int IMA ;
 int MQE_CONGESTION ;
 int MQE_OK ;
 int MQE_UNEXPECTED_CB_ERR ;
 int MQIE_AGAIN ;
 int XTYPE_CL ;
 int gru_get_amo_value_head (void*) ;
 int gru_get_tri (void*) ;
 int gru_vset (void*,unsigned long,int ,int ,int,int,int ) ;
 int gru_vstore (void*,unsigned long,int ,int ,int,int,int ) ;
 scalar_t__ gru_wait (void*) ;
 int send_noop_message (void*,struct gru_message_queue_desc*,void*) ;

__attribute__((used)) static int send_message_put_nacked(void *cb, struct gru_message_queue_desc *mqd,
   void *mesg, int lines)
{
 unsigned long m;
 int ret, loops = 200;

 m = mqd->mq_gpa + (gru_get_amo_value_head(cb) << 6);
 if (lines == 2) {
  gru_vset(cb, m, 0, XTYPE_CL, lines, 1, IMA);
  if (gru_wait(cb) != CBS_IDLE)
   return MQE_UNEXPECTED_CB_ERR;
 }
 gru_vstore(cb, m, gru_get_tri(mesg), XTYPE_CL, lines, 1, IMA);
 if (gru_wait(cb) != CBS_IDLE)
  return MQE_UNEXPECTED_CB_ERR;

 if (!mqd->interrupt_vector)
  return MQE_OK;
 do {
  ret = send_noop_message(cb, mqd, mesg);
 } while ((ret == MQIE_AGAIN || ret == MQE_CONGESTION) && (loops-- > 0));

 if (ret == MQIE_AGAIN || ret == MQE_CONGESTION) {







  ret = MQE_OK;
 }
 return ret;
}
