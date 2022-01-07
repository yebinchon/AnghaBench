
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct go7007 {int std; int vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int go7007_s_std (struct go7007*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id std)
{
 struct go7007 *go = video_drvdata(file);

 if (vb2_is_busy(&go->vidq))
  return -EBUSY;

 go->std = std;

 return go7007_s_std(go);
}
