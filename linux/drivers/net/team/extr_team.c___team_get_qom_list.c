
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct team {struct list_head* qom_lists; } ;
struct list_head {int dummy; } ;



__attribute__((used)) static struct list_head *__team_get_qom_list(struct team *team, u16 queue_id)
{
 return &team->qom_lists[queue_id - 1];
}
