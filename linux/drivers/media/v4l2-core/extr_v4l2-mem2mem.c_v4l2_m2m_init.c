
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_ops {int device_run; } ;
struct v4l2_m2m_dev {int job_work; int job_spinlock; int job_queue; struct v4l2_m2m_ops const* m2m_ops; int * curr_ctx; } ;


 int EINVAL ;
 int ENOMEM ;
 struct v4l2_m2m_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 struct v4l2_m2m_dev* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int v4l2_m2m_device_run_work ;

struct v4l2_m2m_dev *v4l2_m2m_init(const struct v4l2_m2m_ops *m2m_ops)
{
 struct v4l2_m2m_dev *m2m_dev;

 if (!m2m_ops || WARN_ON(!m2m_ops->device_run))
  return ERR_PTR(-EINVAL);

 m2m_dev = kzalloc(sizeof *m2m_dev, GFP_KERNEL);
 if (!m2m_dev)
  return ERR_PTR(-ENOMEM);

 m2m_dev->curr_ctx = ((void*)0);
 m2m_dev->m2m_ops = m2m_ops;
 INIT_LIST_HEAD(&m2m_dev->job_queue);
 spin_lock_init(&m2m_dev->job_spinlock);
 INIT_WORK(&m2m_dev->job_work, v4l2_m2m_device_run_work);

 return m2m_dev;
}
