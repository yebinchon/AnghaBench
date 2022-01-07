
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms_id_register {int if_mode; int class; int category; int type; } ;
struct memstick_request {int data; int error; } ;
struct TYPE_2__ {int class; int category; int type; int match_flags; } ;
struct memstick_dev {int mrq_complete; int dev; TYPE_1__ id; struct memstick_request current_mrq; } ;
typedef int id_reg ;


 int EAGAIN ;
 int MEMSTICK_MATCH_ALL ;
 int MS_TPC_READ_REG ;
 int complete (int *) ;
 int dev_dbg (int *,char*,int ) ;
 int memcpy (struct ms_id_register*,int ,int) ;
 int memstick_init_req (struct memstick_request*,int ,struct ms_id_register*,int) ;

__attribute__((used)) static int h_memstick_read_dev_id(struct memstick_dev *card,
      struct memstick_request **mrq)
{
 struct ms_id_register id_reg;

 if (!(*mrq)) {
  memstick_init_req(&card->current_mrq, MS_TPC_READ_REG, &id_reg,
      sizeof(struct ms_id_register));
  *mrq = &card->current_mrq;
  return 0;
 } else {
  if (!(*mrq)->error) {
   memcpy(&id_reg, (*mrq)->data, sizeof(id_reg));
   card->id.match_flags = MEMSTICK_MATCH_ALL;
   card->id.type = id_reg.type;
   card->id.category = id_reg.category;
   card->id.class = id_reg.class;
   dev_dbg(&card->dev, "if_mode = %02x\n", id_reg.if_mode);
  }
  complete(&card->mrq_complete);
  return -EAGAIN;
 }
}
