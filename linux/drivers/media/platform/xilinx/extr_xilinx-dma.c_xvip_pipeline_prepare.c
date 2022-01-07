
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_pipeline {scalar_t__ use_count; int lock; } ;
struct xvip_dma {int dummy; } ;


 int __xvip_pipeline_cleanup (struct xvip_pipeline*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xvip_pipeline_validate (struct xvip_pipeline*,struct xvip_dma*) ;

__attribute__((used)) static int xvip_pipeline_prepare(struct xvip_pipeline *pipe,
     struct xvip_dma *dma)
{
 int ret;

 mutex_lock(&pipe->lock);


 if (pipe->use_count == 0) {
  ret = xvip_pipeline_validate(pipe, dma);
  if (ret < 0) {
   __xvip_pipeline_cleanup(pipe);
   goto done;
  }
 }

 pipe->use_count++;
 ret = 0;

done:
 mutex_unlock(&pipe->lock);
 return ret;
}
