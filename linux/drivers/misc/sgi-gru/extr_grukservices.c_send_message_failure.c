
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_message_queue_desc {int dummy; } ;


 int BUG () ;






 int MQE_CONGESTION ;
 int MQE_UNEXPECTED_CB_ERR ;
 int STAT (int ) ;
 int gru_get_cb_message_queue_substatus (void*) ;
 int mesq_page_overflow ;
 int mesq_send_amo_nacked ;
 int mesq_send_lb_overflow ;
 int mesq_send_put_nacked ;
 int mesq_send_qlimit_reached ;
 int mesq_send_unexpected_error ;
 int send_message_put_nacked (void*,struct gru_message_queue_desc*,void*,int) ;
 int send_message_queue_full (void*,struct gru_message_queue_desc*,void*,int) ;

__attribute__((used)) static int send_message_failure(void *cb, struct gru_message_queue_desc *mqd,
    void *mesg, int lines)
{
 int substatus, ret = 0;

 substatus = gru_get_cb_message_queue_substatus(cb);
 switch (substatus) {
 case 131:
  STAT(mesq_send_unexpected_error);
  ret = MQE_UNEXPECTED_CB_ERR;
  break;
 case 132:
  STAT(mesq_send_lb_overflow);
  ret = MQE_CONGESTION;
  break;
 case 128:
  STAT(mesq_send_qlimit_reached);
  ret = send_message_queue_full(cb, mqd, mesg, lines);
  break;
 case 133:
  STAT(mesq_send_amo_nacked);
  ret = MQE_CONGESTION;
  break;
 case 129:
  STAT(mesq_send_put_nacked);
  ret = send_message_put_nacked(cb, mqd, mesg, lines);
  break;
 case 130:
  STAT(mesq_page_overflow);

 default:
  BUG();
 }
 return ret;
}
