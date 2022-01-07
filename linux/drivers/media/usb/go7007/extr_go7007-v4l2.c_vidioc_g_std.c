
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct go7007 {int std; } ;
struct file {int dummy; } ;


 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *std)
{
 struct go7007 *go = video_drvdata(file);

 *std = go->std;
 return 0;
}
