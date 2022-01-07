
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {int queue; } ;
struct memstick_dev {int dummy; } ;


 int blk_mq_start_hw_queues (int ) ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;

__attribute__((used)) static void mspro_block_start(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);

 blk_mq_start_hw_queues(msb->queue);
}
