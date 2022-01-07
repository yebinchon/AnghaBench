
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct s2255_vc {int std; } ;
struct file {int dummy; } ;


 struct s2255_vc* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *i)
{
 struct s2255_vc *vc = video_drvdata(file);

 *i = vc->std;
 return 0;
}
