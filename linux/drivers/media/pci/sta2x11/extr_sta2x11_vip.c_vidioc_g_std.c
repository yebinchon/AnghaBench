
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct sta2x11_vip {int std; } ;
struct file {int dummy; } ;


 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *std)
{
 struct sta2x11_vip *vip = video_drvdata(file);

 *std = vip->std;
 return 0;
}
