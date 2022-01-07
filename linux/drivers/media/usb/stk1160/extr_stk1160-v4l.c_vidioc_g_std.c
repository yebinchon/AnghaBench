
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct stk1160 {int norm; } ;
struct file {int dummy; } ;


 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *norm)
{
 struct stk1160 *dev = video_drvdata(file);

 *norm = dev->norm;
 return 0;
}
