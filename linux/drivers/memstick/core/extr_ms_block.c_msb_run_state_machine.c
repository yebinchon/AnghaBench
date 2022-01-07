
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int state; int int_polling; int exit_error; struct memstick_dev* card; } ;
struct memstick_dev {int (* next_request ) (struct memstick_dev*,struct memstick_request**) ;int mrq_complete; int host; int current_mrq; } ;


 int WARN_ON (int) ;
 int memset (int *,int ,int) ;
 int memstick_new_req (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int msb_run_state_machine(struct msb_data *msb, int (*state_func)
  (struct memstick_dev *card, struct memstick_request **req))
{
 struct memstick_dev *card = msb->card;

 WARN_ON(msb->state != -1);
 msb->int_polling = 0;
 msb->state = 0;
 msb->exit_error = 0;

 memset(&card->current_mrq, 0, sizeof(card->current_mrq));

 card->next_request = state_func;
 memstick_new_req(card->host);
 wait_for_completion(&card->mrq_complete);

 WARN_ON(msb->state != -1);
 return msb->exit_error;
}
