
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct camera_data {int v4l2_lock; } ;
typedef int __poll_t ;


 int cpia2_poll (struct camera_data*,struct file*,struct poll_table_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t cpia2_v4l_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct camera_data *cam = video_drvdata(filp);
 __poll_t res;

 mutex_lock(&cam->v4l2_lock);
 res = cpia2_poll(cam, filp, wait);
 mutex_unlock(&cam->v4l2_lock);
 return res;
}
