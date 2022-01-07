
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_pipeline {int dummy; } ;


 int isp_pipeline_disable (struct isp_pipeline*) ;

__attribute__((used)) static void isp_pipeline_suspend(struct isp_pipeline *pipe)
{
 isp_pipeline_disable(pipe);
}
