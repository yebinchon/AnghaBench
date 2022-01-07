
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct go7007 {int v4l2_dev; } ;
struct file {int dummy; } ;


 int call_all (int *,int ,int ,int *) ;
 int querystd ;
 int video ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querystd(struct file *file, void *priv, v4l2_std_id *std)
{
 struct go7007 *go = video_drvdata(file);

 return call_all(&go->v4l2_dev, video, querystd, std);
}
