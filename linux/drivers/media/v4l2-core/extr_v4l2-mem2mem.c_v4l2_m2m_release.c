
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_dev {int dummy; } ;


 int kfree (struct v4l2_m2m_dev*) ;

void v4l2_m2m_release(struct v4l2_m2m_dev *m2m_dev)
{
 kfree(m2m_dev);
}
