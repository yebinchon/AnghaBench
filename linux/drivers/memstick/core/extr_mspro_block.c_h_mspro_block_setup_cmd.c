
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u64 ;
struct mspro_param_register {int data_address; int tpc_param; int data_count; int system; } ;
struct mspro_block_data {size_t page_size; int mrq_handler; int system; } ;
struct memstick_dev {int current_mrq; int next_request; } ;
typedef int param ;


 int MS_TPC_WRITE_REG ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int do_div (scalar_t__,size_t) ;
 int h_mspro_block_req_init ;
 int h_mspro_block_transfer_data ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_init_req (int *,int ,struct mspro_param_register*,int) ;

__attribute__((used)) static void h_mspro_block_setup_cmd(struct memstick_dev *card, u64 offset,
        size_t length)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 struct mspro_param_register param = {
  .system = msb->system,
  .data_count = cpu_to_be16((uint16_t)(length / msb->page_size)),

  .data_address = 0,
  .tpc_param = 0
 };

 do_div(offset, msb->page_size);
 param.data_address = cpu_to_be32((uint32_t)offset);

 card->next_request = h_mspro_block_req_init;
 msb->mrq_handler = h_mspro_block_transfer_data;
 memstick_init_req(&card->current_mrq, MS_TPC_WRITE_REG,
     &param, sizeof(param));
}
