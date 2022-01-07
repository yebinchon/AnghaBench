
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int r_offset; int r_length; } ;
struct msb_data {int addr_valid; TYPE_2__ reg_addr; TYPE_1__* card; } ;
struct memstick_request {int dummy; } ;
struct TYPE_3__ {struct memstick_request current_mrq; } ;


 int MS_TPC_READ_REG ;
 int MS_TPC_SET_RW_REG_ADRS ;
 int memstick_init_req (struct memstick_request*,int ,TYPE_2__*,int) ;

__attribute__((used)) static int msb_read_regs(struct msb_data *msb, int offset, int len)
{
 struct memstick_request *req = &msb->card->current_mrq;

 if (msb->reg_addr.r_offset != offset ||
     msb->reg_addr.r_length != len || !msb->addr_valid) {

  msb->reg_addr.r_offset = offset;
  msb->reg_addr.r_length = len;
  msb->addr_valid = 1;

  memstick_init_req(req, MS_TPC_SET_RW_REG_ADRS,
   &msb->reg_addr, sizeof(msb->reg_addr));
  return 0;
 }

 memstick_init_req(req, MS_TPC_READ_REG, ((void*)0), len);
 return 1;
}
