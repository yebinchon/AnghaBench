
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_vip {unsigned int input; } ;
struct file {int dummy; } ;


 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct sta2x11_vip *vip = video_drvdata(file);

 *i = vip->input;
 return 0;
}
