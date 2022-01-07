
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_pipeline {int * output; scalar_t__ num_dmas; } ;



__attribute__((used)) static void __xvip_pipeline_cleanup(struct xvip_pipeline *pipe)
{
 pipe->num_dmas = 0;
 pipe->output = ((void*)0);
}
