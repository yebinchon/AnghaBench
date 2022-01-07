
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team {struct list_head* qom_lists; TYPE_1__* dev; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int num_tx_queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int ) ;
 struct list_head* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int team_queue_override_init(struct team *team)
{
 struct list_head *listarr;
 unsigned int queue_cnt = team->dev->num_tx_queues - 1;
 unsigned int i;

 if (!queue_cnt)
  return 0;
 listarr = kmalloc_array(queue_cnt, sizeof(struct list_head),
    GFP_KERNEL);
 if (!listarr)
  return -ENOMEM;
 team->qom_lists = listarr;
 for (i = 0; i < queue_cnt; i++)
  INIT_LIST_HEAD(listarr++);
 return 0;
}
