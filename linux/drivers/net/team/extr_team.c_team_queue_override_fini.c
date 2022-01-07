
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int qom_lists; } ;


 int kfree (int ) ;

__attribute__((used)) static void team_queue_override_fini(struct team *team)
{
 kfree(team->qom_lists);
}
