
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_request {int error; } ;
struct memstick_dev {int dummy; } ;


 int mspro_block_complete_req (struct memstick_dev*,int ) ;

__attribute__((used)) static int h_mspro_block_default(struct memstick_dev *card,
     struct memstick_request **mrq)
{
 return mspro_block_complete_req(card, (*mrq)->error);
}
