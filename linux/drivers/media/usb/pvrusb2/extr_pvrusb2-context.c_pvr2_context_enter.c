
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context {int mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void pvr2_context_enter(struct pvr2_context *mp)
{
 mutex_lock(&mp->mutex);
}
