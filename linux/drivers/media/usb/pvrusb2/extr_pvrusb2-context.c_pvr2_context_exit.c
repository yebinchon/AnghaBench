
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int mutex; int disconnect_flag; scalar_t__ mc_first; } ;


 int mutex_unlock (int *) ;
 int pvr2_context_notify (struct pvr2_context*) ;

__attribute__((used)) static void pvr2_context_exit(struct pvr2_context *mp)
{
 int destroy_flag = 0;
 if (!(mp->mc_first || !mp->disconnect_flag)) {
  destroy_flag = !0;
 }
 mutex_unlock(&mp->mutex);
 if (destroy_flag) pvr2_context_notify(mp);
}
