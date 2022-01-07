
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mspro_block_data {int mrq_handler; } ;
struct TYPE_2__ {int error; } ;
struct memstick_dev {TYPE_1__ current_mrq; int mrq_complete; int host; int next_request; } ;


 int MS_TPC_GET_INT ;
 int h_mspro_block_req_init ;
 int h_mspro_block_wait_for_ced ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_init_req (TYPE_1__*,int ,int *,int) ;
 int memstick_new_req (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mspro_block_wait_for_ced(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);

 card->next_request = h_mspro_block_req_init;
 msb->mrq_handler = h_mspro_block_wait_for_ced;
 memstick_init_req(&card->current_mrq, MS_TPC_GET_INT, ((void*)0), 1);
 memstick_new_req(card->host);
 wait_for_completion(&card->mrq_complete);
 return card->current_mrq.error;
}
