
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dev; int lock; } ;


 int dev_put (int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void team_nl_team_put(struct team *team)
{
 mutex_unlock(&team->lock);
 dev_put(team->dev);
}
