
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_dev {int dummy; } ;
struct v4l2_m2m_ctx {struct v4l2_m2m_dev* m2m_dev; } ;


 int __v4l2_m2m_try_queue (struct v4l2_m2m_dev*,struct v4l2_m2m_ctx*) ;
 int v4l2_m2m_try_run (struct v4l2_m2m_dev*) ;

void v4l2_m2m_try_schedule(struct v4l2_m2m_ctx *m2m_ctx)
{
 struct v4l2_m2m_dev *m2m_dev = m2m_ctx->m2m_dev;

 __v4l2_m2m_try_queue(m2m_dev, m2m_ctx);
 v4l2_m2m_try_run(m2m_dev);
}
