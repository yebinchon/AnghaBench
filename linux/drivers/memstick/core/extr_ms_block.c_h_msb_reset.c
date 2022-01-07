
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct msb_data {int state; } ;
struct memstick_request {int need_card_int; scalar_t__ error; } ;
struct memstick_dev {struct memstick_request current_mrq; } ;


 int BUG () ;


 int MS_CMD_RESET ;
 int MS_TPC_SET_CMD ;
 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_init_req (struct memstick_request*,int ,int *,int) ;
 int msb_exit_state_machine (struct msb_data*,scalar_t__) ;

__attribute__((used)) static int h_msb_reset(struct memstick_dev *card,
     struct memstick_request **out_mrq)
{
 u8 command = MS_CMD_RESET;
 struct msb_data *msb = memstick_get_drvdata(card);
 struct memstick_request *mrq = *out_mrq = &card->current_mrq;

 if (mrq->error)
  return msb_exit_state_machine(msb, mrq->error);

 switch (msb->state) {
 case 128:
  memstick_init_req(mrq, MS_TPC_SET_CMD, &command, 1);
  mrq->need_card_int = 0;
  msb->state = 129;
  return 0;
 case 129:
  return msb_exit_state_machine(msb, 0);
 }
 BUG();
}
