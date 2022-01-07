
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msb_data {int state; int int_polling; int caps; scalar_t__ int_timeout; TYPE_1__* card; } ;
struct memstick_request {int need_card_int; int int_reg; int * data; int error; } ;
struct TYPE_2__ {struct memstick_request current_mrq; } ;


 int MEMSTICK_CAP_AUTO_GET_INT ;
 int MEMSTICK_INT_CMDNAK ;
 int MS_TPC_GET_INT ;
 int WARN_ON (int) ;
 scalar_t__ jiffies ;
 int memstick_init_req (struct memstick_request*,int ,int *,int) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int msb_read_int_reg(struct msb_data *msb, long timeout)
{
 struct memstick_request *mrq = &msb->card->current_mrq;

 WARN_ON(msb->state == -1);

 if (!msb->int_polling) {
  msb->int_timeout = jiffies +
   msecs_to_jiffies(timeout == -1 ? 500 : timeout);
  msb->int_polling = 1;
 } else if (time_after(jiffies, msb->int_timeout)) {
  mrq->data[0] = MEMSTICK_INT_CMDNAK;
  return 0;
 }

 if ((msb->caps & MEMSTICK_CAP_AUTO_GET_INT) &&
    mrq->need_card_int && !mrq->error) {
  mrq->data[0] = mrq->int_reg;
  mrq->need_card_int = 0;
  return 0;
 } else {
  memstick_init_req(mrq, MS_TPC_GET_INT, ((void*)0), 1);
  return 1;
 }
}
