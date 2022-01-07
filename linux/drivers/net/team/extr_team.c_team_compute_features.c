
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dev; int lock; } ;


 int __team_compute_features (struct team*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_change_features (int ) ;

__attribute__((used)) static void team_compute_features(struct team *team)
{
 mutex_lock(&team->lock);
 __team_compute_features(team);
 mutex_unlock(&team->lock);
 netdev_change_features(team->dev);
}
