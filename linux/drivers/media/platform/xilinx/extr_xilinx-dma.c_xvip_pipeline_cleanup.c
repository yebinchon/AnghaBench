
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_pipeline {scalar_t__ use_count; int lock; } ;


 int __xvip_pipeline_cleanup (struct xvip_pipeline*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void xvip_pipeline_cleanup(struct xvip_pipeline *pipe)
{
 mutex_lock(&pipe->lock);


 if (--pipe->use_count == 0)
  __xvip_pipeline_cleanup(pipe);

 mutex_unlock(&pipe->lock);
}
