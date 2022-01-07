
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_request {unsigned char tpc; scalar_t__ data_dir; int data_len; int need_card_int; scalar_t__ long_data; int data; } ;


 unsigned char MS_TPC_EX_SET_CMD ;
 unsigned char MS_TPC_SET_CMD ;
 scalar_t__ READ ;
 scalar_t__ WRITE ;
 int memcpy (int ,void const*,int) ;

void memstick_init_req(struct memstick_request *mrq, unsigned char tpc,
         const void *buf, size_t length)
{
 mrq->tpc = tpc;
 if (tpc & 8)
  mrq->data_dir = WRITE;
 else
  mrq->data_dir = READ;

 mrq->data_len = length > sizeof(mrq->data) ? sizeof(mrq->data) : length;
 if (mrq->data_dir == WRITE)
  memcpy(mrq->data, buf, mrq->data_len);

 mrq->long_data = 0;

 if (tpc == MS_TPC_SET_CMD || tpc == MS_TPC_EX_SET_CMD)
  mrq->need_card_int = 1;
 else
  mrq->need_card_int = 0;
}
